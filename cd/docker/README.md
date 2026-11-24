# CD - Publicación de imágenes Docker

Workflow de GitHub Actions para construir y publicar imágenes Docker en GitHub Container Registry (GHCR).

## Requisitos

- Repositorio alojado en GitHub.
- Dockerfile en la raíz del proyecto.
- GitHub Actions habilitado.
- Permisos para publicar paquetes en GHCR.

## Uso

1. Copiar `publish.yml` al proyecto.
2. Colocarlo en `.github/workflows/`.
3. Adaptar el contexto de construcción y la ubicación del Dockerfile si es necesario.
4. Subir los cambios a la rama `main`.

## Funcionamiento

Al realizar un push a `main`, GitHub Actions:

1. Descarga el código.
2. Construye la imagen Docker.
3. Inicia sesión en GHCR.
4. Publica la imagen con las etiquetas `latest` y el SHA del commit.

## Permisos

El workflow utiliza `GITHUB_TOKEN` y solicita:

- `contents: read`
- `packages: write`

No es necesario crear manualmente un token personal para esta operación.

## Resultado

La imagen queda disponible en GitHub Container Registry y puede descargarse desde un servidor mediante `docker pull`.