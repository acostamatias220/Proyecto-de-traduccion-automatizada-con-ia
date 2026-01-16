import re
import requests
import time
import os

# ================= CONFIG =================

API_URL = "http://localhost:11434/api/generate"
MODEL = "llama3"
TIMEOUT = 300

INPUT_ENCODING = "shift_jis"
OUTPUT_ENCODING = "shift_jis"

INPUT_DIR = "nss_sin_traducir"
OUTPUT_DIR = "nss_traducidos"

# ==========================================

PROMPT = """Eres un traductor profesional de novelas visuales japonesas.
Traduce el siguiente texto al ESPAÑOL neutro.

REGLAS:
- Devuelve SOLO la traducción.
- NO agregues explicaciones.
- NO pidas contexto.
- NO uses otros idiomas.
- Mantén el tono emocional.
- Si una palabra no se puede traducir, deja el japonés.

Texto:
"""

def respuesta_valida(texto: str) -> bool:
    texto = texto.lower()
    prohibido = [
        "sorry",
        "error",
        "cannot",
        "request",
        "context",
        "provide",
        "as an ai",
        "i can't",
    ]
    return not any(p in texto for p in prohibido)

def traducir_linea(jp: str) -> str:
    payload = {
        "model": MODEL,
        "prompt": PROMPT + jp,
        "stream": False
    }

    r = requests.post(API_URL, json=payload, timeout=TIMEOUT)
    data = r.json()

    if "response" not in data:
        return jp

    trad = data["response"].strip()

    if not trad or not respuesta_valida(trad):
        return jp

    return trad

def procesar_archivo(input_path: str, output_path: str):
    with open(input_path, "r", encoding=INPUT_ENCODING, errors="ignore") as f:
        lineas = f.readlines()

    salida = []
    patron = re.compile(r"「(.+?)」")

    for linea in lineas:
        def reemplazo(match):
            original = match.group(1)
            print(f"Traduciendo: {original}")
            traduccion = traducir_linea(original)
            time.sleep(0.4)
            return f"「{traduccion}」"

        nueva = patron.sub(reemplazo, linea)
        salida.append(nueva)

    os.makedirs(os.path.dirname(output_path), exist_ok=True)

    with open(output_path, "w", encoding=OUTPUT_ENCODING, errors="replace") as f:
        f.writelines(salida)

# ================== MAIN ===================

if __name__ == "__main__":
    nombre = input("Archivo .nss a traducir: ").strip()

    input_path = os.path.join(INPUT_DIR, nombre)
    output_path = os.path.join(OUTPUT_DIR, nombre)

    if not os.path.exists(input_path):
        print(f" No existe el archivo: {input_path}")
        exit(1)

    procesar_archivo(input_path, output_path)
    print(" Traducción finalizada.")


