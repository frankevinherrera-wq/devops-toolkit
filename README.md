# DevOps Templates

Colección de plantillas y configuraciones reutilizables para estandarizar el desarrollo, integración y despliegue de proyectos de software.

## Objetivo

Centralizar configuraciones y automatizaciones para evitar repetir tareas en cada proyecto y mantener buenas prácticas de desarrollo, seguridad y despliegue.

## Contenido

| Directorio | Descripción |
|---|---|
| `base/` | Configuraciones generales de Git, GitHub, seguridad y documentación. |
| `docker/` | Dockerfiles y configuraciones de Docker Compose. |
| `ci/` | Workflows de integración continua con GitHub Actions. |
| `cd/` | Workflows para publicación de imágenes Docker y despliegue en VPS y plataformas cloud. |
| `terraform/` | Plantillas de infraestructura como código utilizando Terraform. |
| `blueprints/` | Configuraciones declarativas para desplegar servicios mediante Render Blueprints. |

Cada directorio incluye documentación específica sobre el uso y adaptación de sus plantillas.

## Tecnologías

Las plantillas están orientadas inicialmente a:

- .NET / ASP.NET Core
- Node.js
- Python
- PostgreSQL
- Docker y Docker Compose
- GitHub Actions
- GitHub Container Registry (GHCR)
- Terraform
- Render

## Uso

Las configuraciones pueden copiarse y adaptarse a cada proyecto.

Ejemplo:

```bash
mkdir mi-proyecto
cd mi-proyecto
git init
```

Después, seleccionar las plantillas necesarias de este repositorio, copiarlas al proyecto y adaptar sus configuraciones.

No todas las plantillas son obligatorias. Cada proyecto debe utilizar únicamente las que correspondan a su arquitectura y tecnologías.

## Principios

- Reutilización de configuraciones.
- Automatización de tareas repetitivas.
- Seguridad desde el inicio.
- Documentación clara.
- Adaptabilidad a diferentes proyectos.
- Verificación de las plantillas antes de utilizarlas en producción.

## Estado

Proyecto en desarrollo.