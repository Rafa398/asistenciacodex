#!/usr/bin/env bash
set -euo pipefail

# Script base para ejecutar un prototipo pequeño sin dependencias externas.
# Adáptalo al lenguaje que elijas (Python, C, Bash o ARM64 Assembly).

echo "[INFO] Verificando estructura del proyecto..."

if [[ ! -d "src" ]]; then
  echo "[ERROR] No existe la carpeta src/."
  exit 1
fi

# Detecta de forma simple posibles archivos principales en src/
main_file=""
for candidate in "src/main.py" "src/main.c" "src/main.sh" "src/main.s" "src/main.asm"; do
  if [[ -f "$candidate" ]]; then
    main_file="$candidate"
    break
  fi
done

if [[ -z "$main_file" ]]; then
  echo "[WARN] No se encontró un archivo principal en src/."
  echo "[SUGERENCIA] Crea uno como src/main.py, src/main.c, src/main.sh o src/main.s"
  exit 0
fi

echo "[INFO] Archivo principal detectado: $main_file"

echo "[INFO] Ejecución de ejemplo (personaliza esta sección):"
case "$main_file" in
  src/main.py)
    echo "python3 src/main.py"
    python3 src/main.py
    ;;
  src/main.sh)
    echo "bash src/main.sh"
    bash src/main.sh
    ;;
  src/main.c)
    echo "Compila manualmente, por ejemplo: gcc src/main.c -o main && ./main"
    ;;
  src/main.s|src/main.asm)
    echo "Ensamblado/ligado manual según tu entorno ARM64. Mantén el alcance muy pequeño."
    ;;
  *)
    echo "[WARN] Tipo de archivo no contemplado en la plantilla."
    ;;
esac

echo "[INFO] Script finalizado."
