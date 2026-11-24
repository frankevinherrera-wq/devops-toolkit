# Docker .NET — Monolito Modular

Template Docker para aplicaciones .NET organizadas mediante múltiples proyectos `.csproj`, agrupados en una solución `.sln`.

## Estructura esperada

```text
NombreSolucion/
├── NombreSolucion.sln
├── src/
│   ├── Nombre.Api/
│   │   └── Nombre.Api.csproj
│   ├── Nombre.Modulo1/
│   │   └── Nombre.Modulo1.csproj
│   ├── Nombre.Modulo2/
│   │   └── Nombre.Modulo2.csproj
│   └── Nombre.Infrastructure/
│       └── Nombre.Infrastructure.csproj
├── Dockerfile
└── .dockerignore
```

## Configuración

Antes de construir la imagen, adapta el Dockerfile:

1. Cambia el nombre y la ruta de la solución.
2. Ajusta las rutas de los proyectos `.csproj`.
3. Identifica el proyecto ejecutable.
4. Cambia el nombre del archivo `.dll` en `ENTRYPOINT`.
5. Ajusta la versión de .NET según el proyecto.

Los proyectos deben estar incluidos en la solución y sus referencias deben estar correctamente configuradas.

## Construir la imagen

Desde la raíz del proyecto:

```bash
docker build -t nombre-api .
```

## Ejecutar el contenedor

```bash
docker run -d \
  --name nombre-api \
  -p 8080:8080 \
  nombre-api
```

La aplicación estará disponible en:

```text
http://localhost:8080
```

## Consideraciones

- La solución puede contener varios proyectos, pero este template publica únicamente el proyecto ejecutable indicado.
- Las bibliotecas referenciadas se incluyen en la publicación cuando corresponde.
- Los proyectos de pruebas no se publican como parte de la aplicación.
- No incluir secretos ni credenciales dentro de la imagen.
- Para bases de datos y otros servicios, utilizar Docker Compose.

## Limitaciones

Este template parte de una estructura con la solución en la raíz y proyectos dentro de `src/`. Si el repositorio utiliza otra estructura, hay que adaptar las instrucciones `COPY` del Dockerfile.