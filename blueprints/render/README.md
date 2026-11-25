# Render Blueprint

Template para desplegar servicios web tilizando imágenes Docker publicadas en un registry como GitHub Container Registry.

## Configuración

Edita `render.yaml`:

- `name`: nombre del servicio.
- `runtime`: entorno de ejecución (`image`).
- `plan`: plan de Render (`free`).
- `region`: región de despliegue.
- `image.url`: dirección de la imagen Docker.

## Ejemplo

```yaml
services:
  - type: web
    name: mi-api
    runtime: image
    plan: free
    region: oregon
    image:
      url: ghcr.io/usuario/mi-api:latest
```

## Uso

1. Publicar la imagen Docker en GHCR.
2. Conectar el repositorio GitHub con Render.
3. Crear un Blueprint y seleccionar `blueprints/render/render.yaml`.
4. Sincronizar el Blueprint para crear el servicio.

## Consideraciones

- La imagen debe existir en el registry.
- Si GHCR utiliza un paquete privado, hay que configurar las credenciales correspondientes en Render.
- La etiqueta `latest` permite utilizar una referencia estable, pero no identifica de forma inmutable una versión específica.
- Para despliegues reproducibles, se recomienda utilizar etiquetas basadas en SHA.
