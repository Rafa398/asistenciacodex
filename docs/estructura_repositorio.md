# Estructura del Repositorio

## Árbol de directorios recomendado

```text
nombre-del-proyecto/
├── README.md
├── docs/
│   ├── propuesta.md
│   ├── caso_de_uso.md
│   ├── estructura_repositorio.md
│   └── plan_de_pruebas.md
├── src/
│   └── main.<ext>
├── scripts/
│   └── run.sh
└── tests/
    └── test_plan.md
```

## Explicación de cada carpeta
- `docs/`: documentación del diseño, caso de uso y pruebas.
- `src/`: código fuente principal del prototipo.
- `scripts/`: scripts de apoyo para ejecución local.
- `tests/`: evidencias y checklist de validación.

## Explicación de cada archivo
- `README.md`: instrucciones generales, reglas y criterios de evaluación.
- `docs/propuesta.md`: definición de la idea y su alcance.
- `docs/caso_de_uso.md`: flujo de uso principal y alternativo.
- `docs/estructura_repositorio.md`: guía de organización del proyecto.
- `docs/plan_de_pruebas.md`: casos de prueba documentados.
- `src/main.<ext>`: punto de entrada del programa.
- `scripts/run.sh`: ejecución básica local sin dependencias externas.
- `tests/test_plan.md`: checklist final de validación.

## Reglas para nombrar archivos
- Usa minúsculas.
- Usa guiones bajos (`_`) para separar palabras.
- Evita espacios y acentos en nombres de archivos.
- Mantén extensiones correctas según lenguaje.

## Reglas para evitar desorden
- No crees carpetas innecesarias.
- No dupliques información entre archivos.
- Mantén cada documento con un propósito claro.
- Guarda prototipos y pruebas en su lugar correspondiente.

## Nota de buenas prácticas
Mantén pocos archivos y funciones pequeñas. Esta actividad evalúa claridad de documentación y viabilidad, no volumen de código.
