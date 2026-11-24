# DevOps Templates

Plantillas y configuraciones reutilizables para estandarizar la creación, desarrollo, integración y despliegue de proyectos de software.

## Objetivo

Centralizar configuraciones y automatizaciones para evitar repetir tareas en cada proyecto y mantener buenas prácticas de desarrollo.

## Contenido

| Directorio | Descripción |
|---|---|
| `base/` | Configuraciones generales de Git, GitHub, seguridad y documentación. |
| `docker/` | Dockerfiles y configuraciones de Docker Compose. |
| `ci/` | Automatización de integración continua. |
| `cd/` | Automatización de entrega y despliegue continuo. |
| `docs/` | Guías de configuración y utilización. |

## Tecnologías

Las plantillas están orientadas inicialmente a:

- .NET / ASP.NET Core
- Node.js
- Python
- Angular y otros frameworks frontend
- Docker y Docker Compose
- GitHub Actions

## Uso

Las configuraciones pueden copiarse y adaptarse a cada proyecto.

Ejemplo:

```bash
mkdir mi-proyecto
cd mi-proyecto
git init
```

Después, se seleccionan las plantillas necesarias del repositorio y se adaptan a la estructura y tecnologías del proyecto.

## Principios

- Reutilización de configuraciones.
- Automatización de tareas repetitivas.
- Seguridad desde el inicio.
- Documentación clara.
- Configuraciones probadas antes de reutilizarlas.

## Estado

Proyecto en desarrollo. Las plantillas se incorporarán progresivamente y se probarán en proyectos reales antes de considerarse estables.