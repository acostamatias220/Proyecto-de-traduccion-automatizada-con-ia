import re
import requests
import time
import os
import json

# ================= CONFIG =================

API_URL = "http://localhost:11434/api/generate"
MODEL = "llama3"
TIMEOUT = 300
INPUT_ENCODING = "shift_jis"
OUTPUT_ENCODING = "shift_jis"
INPUT_DIR = "nss_sin_traducir"
OUTPUT_DIR = "nss_traducidos"
CACHE_FILE = "cache_traducciones.json"
BATCH_SIZE = 5  # cuántas líneas por request

# ==========================================

PROMPT = """Eres un traductor profesional de novelas visuales japonesas. Traduce al ESPAÑOL neutro.

REGLAS:
- Devuelve SOLO la traducción.
- NO agregues explicaciones ni comentarios.
- Mantén el tono emocional.
- Si hay varios fragmentos separados por ---, tradúcelos separados por ---.
- Si una palabra no se puede traducir, dejá el japonés.

Texto:
"""

def respuesta_valida(texto: str) -> bool:
    texto = texto.lower()
    prohibido = ["sorry", "error", "cannot", "request", "context",
                 "provide", "as an ai", "i can't"]
    return not any(p in texto for p in prohibido)

def cargar_cache() -> dict:
    if os.path.exists(CACHE_FILE):
        with open(CACHE_FILE, "r", encoding="utf-8") as f:
            return json.load(f)
    return {}

def guardar_cache(cache: dict):
    with open(CACHE_FILE, "w", encoding="utf-8") as f:
        json.dump(cache, f, ensure_ascii=False, indent=2)

def traducir_batch(lineas: list, cache: dict) -> list:
    resultados = list(lineas)
    pendientes = []
    indices = []

    for i, jp in enumerate(lineas):
        if jp in cache:
            resultados[i] = cache[jp]
            print(f"  Cache: {jp[:25]}...")
        else:
            pendientes.append(jp)
            indices.append(i)

    if not pendientes:
        return resultados

    texto_batch = "\n---\n".join(pendientes)
    payload = {
        "model": MODEL,
        "prompt": PROMPT + texto_batch,
        "stream": False
    }

    try:
        r = requests.post(API_URL, json=payload, timeout=TIMEOUT)
        data = r.json()
        traducciones = data.get("response", "").strip().split("---")

        for i, (idx, jp) in enumerate(zip(indices, pendientes)):
            trad = traducciones[i].strip() if i < len(traducciones) else jp
            if trad and respuesta_valida(trad):
                cache[jp] = trad
                resultados[idx] = trad
            else:
                resultados[idx] = jp

        guardar_cache(cache)
    except Exception as e:
        print(f"  Error en batch: {e}")

    time.sleep(0.3)
    return resultados

def procesar_archivo(input_path: str, output_path: str, cache: dict):
    with open(input_path, "r", encoding=INPUT_ENCODING, errors="ignore") as f:
        lineas = f.readlines()

    patron = re.compile(r"「(.+?)」")

    # Extraer todas las líneas de diálogo del archivo
    dialogos = []
    posiciones = []

    for i, linea in enumerate(lineas):
        matches = patron.findall(linea)
        for match in matches:
            dialogos.append(match)
            posiciones.append(i)

    # Traducir en batches
    traducidos = []
    for i in range(0, len(dialogos), BATCH_SIZE):
        batch = dialogos[i:i + BATCH_SIZE]
        print(f"  Batch {i//BATCH_SIZE + 1} — {len(batch)} líneas")
        traducidos.extend(traducir_batch(batch, cache))

    # Reemplazar en el archivo
    contador = [0]
    salida = []

    for linea in lineas:
        def reemplazo(match):
            idx = contador[0]
            counter[0] += 1
            if idx < len(traducidos):
                return f"「{traducidos[idx]}」"
            return match.group(0)

        contador = [0]
        matches_en_linea = patron.findall(linea)
        iter_trad = iter(traducidos)

        def reemplazar(match):
            try:
                return f"「{next(iter_trad)}」"
            except StopIteration:
                return match.group(0)

        nueva = patron.sub(reemplazar, linea)
        salida.append(nueva)

    os.makedirs(os.path.dirname(output_path) if os.path.dirname(output_path) else ".", exist_ok=True)

    with open(output_path, "w", encoding=OUTPUT_ENCODING, errors="replace") as f:
        f.writelines(salida)

# ================== MAIN ===================

if __name__ == "__main__":
    cache = cargar_cache()
    print(f"Cache cargado: {len(cache)} traducciones guardadas")

    archivos = [f for f in os.listdir(INPUT_DIR) if f.endswith(".nss")]

    if not archivos:
        print("No hay archivos .nss en la carpeta de entrada.")
        exit(1)

    print(f"Se encontraron {len(archivos)} archivos para traducir.")

    for i, nombre in enumerate(archivos, 1):
        input_path = os.path.join(INPUT_DIR, nombre)
        output_path = os.path.join(OUTPUT_DIR, nombre)

        if os.path.exists(output_path):
            print(f"[{i}/{len(archivos)}] Salteando (ya existe): {nombre}")
            continue

        print(f"\n[{i}/{len(archivos)}] Procesando: {nombre}")
        procesar_archivo(input_path, output_path, cache)

    print("\nProceso completo.")
    print(f"Cache final: {len(cache)} traducciones guardadas.")


