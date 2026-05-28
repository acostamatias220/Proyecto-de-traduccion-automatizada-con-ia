# Traductor automático de novelas visuales — Axanael

Script en Python que traduce automáticamente archivos `.nss` de novelas visuales japonesas usando una IA local a través de Ollama.

Desarrollado para traducir **Axanael**, novela visual disponible solo en japonés.

## Tecnologías

- Python 3
- Ollama (IA local)
- LLaMA 3
- Regex

## Cómo funciona

1. Lee los archivos `.nss` en la carpeta `nss_sin_traducir/`
2. Detecta las líneas de diálogo con el patrón `「texto」`
3. Envía cada línea a LLaMA 3 corriendo localmente con Ollama
4. Guarda los archivos traducidos en `nss_traducidos/`
5. Saltea automáticamente archivos ya procesados

## Requisitos

- [Ollama](https://ollama.com) instalado y corriendo
- Modelo LLaMA 3 descargado: `ollama pull llama3`

## Uso

```bash
pip install requests
python traducir_nss.py
```

## Notas

- Los archivos usan encoding `shift_jis` (estándar en juegos japoneses)
- El modelo necesita hardware con buena GPU para velocidad óptima
- Si la traducción falla, conserva el texto original en japonés