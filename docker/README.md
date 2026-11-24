# Plantillas Docker

Colección de configuraciones reutilizables para construir, ejecutar y coordinar aplicaciones mediante Docker.

## Estructura

| Directorio | Descripción |
|---|---|
| `dotnet/` | Dockerfile y configuración para proyectos .NET. |
| `node/` | Plantillas para aplicaciones Node.js. |
| `python/` | Plantillas para aplicaciones Python. |
| `compose/` | Configuraciones para coordinar múltiples contenedores. |

## Uso

1. Identificar la tecnología del proyecto.
2. Copiar los archivos de la plantilla correspondiente.
3. Adaptar nombres, rutas, versiones y puertos.
4. Configurar las variables de entorno.
5. Construir y ejecutar la aplicación.

## Buenas prácticas

- Utilizar imágenes oficiales.
- Preferir construcciones multi-stage cuando corresponda.
- Excluir archivos innecesarios con `.dockerignore`.
- No incorporar secretos en las imágenes.
- Utilizar volúmenes para datos persistentes.
- Mantener las imágenes y dependencias actualizadas.

## Documentación

Cada directorio contiene su propio README con instrucciones específicas de utilización.