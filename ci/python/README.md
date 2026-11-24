# CI para Python

Workflow de GitHub Actions para automatizar la instalación de dependencias y ejecución de pruebas en proyectos Python.

## Requisitos

- Python.
- Archivo `requirements.txt`.
- pytest incluido entre las dependencias.

## Uso

1. Copiar `ci.yml` al proyecto.
2. Colocarlo en `.github/workflows/`.
3. Adaptar la versión de Python.
4. Comprobar que `requirements.txt` incluya las dependencias necesarias.
5. Subir los cambios a GitHub.

## Ejecución

El workflow se ejecuta cuando:

- Se realiza un push a `main`.
- Se abre o actualiza un Pull Request dirigido a `main`.

## Verificación

Consultar la pestaña Actions del repositorio en GitHub.