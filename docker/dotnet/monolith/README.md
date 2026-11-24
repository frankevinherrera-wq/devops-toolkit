# Plantilla Docker para .NET

Plantilla para construir y ejecutar aplicaciones ASP.NET Core utilizando Docker.

## Requisitos

- Docker instalado.
- SDK de .NET compatible con el proyecto.
- Un proyecto .NET con su archivo `.csproj`.

## Contenido

- `Dockerfile`: construcción multi-stage para separar compilación y ejecución.
- `.dockerignore`: excluye archivos innecesarios del contexto de construcción.

## Uso

### 1. Copiar los archivos

Copia `Dockerfile` y `.dockerignore` a la raíz del proyecto .NET.

### 2. Adaptar el Dockerfile

Modifica el nombre del ensamblado en `ENTRYPOINT`:

```dockerfile
ENTRYPOINT ["dotnet", "NombreProyecto.dll"]
```

Reemplaza `NombreProyecto.dll` por el nombre real del ensamblado generado.

Comprueba también que la versión de .NET de las imágenes base coincida con la versión del proyecto.

### 3. Construir la imagen

Desde la raíz del proyecto:

```bash
docker build -t nombre-api:latest .
```

### 4. Ejecutar el contenedor

```bash
docker run -d \
  --name nombre-api \
  -p 8080:8080 \
  nombre-api:latest
```

La aplicación estará disponible en `http://localhost:8080`.

## Configuración y secretos

- No incluir contraseñas, tokens ni claves API en el Dockerfile.
- No almacenar secretos en `appsettings.json`.
- Utilizar variables de entorno para proporcionar configuraciones sensibles.
- Excluir archivos locales y secretos mediante `.dockerignore`.
- No incluir configuraciones específicas de desarrollo en imágenes de producción.

Ejemplo de variable de entorno:

```bash
docker run -d \
  --name nombre-api \
  -p 8080:8080 \
  -e ASPNETCORE_ENVIRONMENT=Production \
  nombre-api:latest
```

## Limitaciones

Esta plantilla está diseñada para proyectos con un único archivo `.csproj` en la raíz del contexto de construcción.

Las soluciones con múltiples proyectos, referencias entre proyectos o configuraciones compartidas requieren adaptar las instrucciones `COPY` del Dockerfile.