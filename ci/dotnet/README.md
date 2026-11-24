# CI para .NET

Workflow de GitHub Actions para automatizar la restauración de dependencias, compilación y ejecución de pruebas en proyectos .NET.

## Requisitos

- SDK de .NET instalado en el entorno de GitHub Actions.
- Un proyecto `.csproj` o una solución `.sln`.
- Proyectos de pruebas configurados si se desea ejecutar pruebas automatizadas.

## Uso

1. Copiar el archivo `ci.yml` al proyecto.
2. Colocarlo en `.github/workflows/`.
3. Adaptar la versión de .NET según el proyecto.
4. Verificar que el workflow se ejecute desde el directorio correcto.
5. Subir los cambios a GitHub.

## Compatibilidad

El workflow puede trabajar con:

- **Proyecto individual:** un archivo `.csproj`.
- **Solución:** un archivo `.sln` que agrupa varios proyectos `.csproj`, como en un monolito modular.

Los comandos `dotnet restore`, `dotnet build` y `dotnet test` pueden trabajar con proyectos o soluciones.

Por defecto, el workflow ejecuta los comandos desde la raíz del repositorio. Si el proyecto o la solución están en otra ubicación, hay que ajustar las rutas o configurar el directorio de trabajo (`working-directory`).

Si existen varios archivos `.sln` o `.csproj` en la raíz, se recomienda especificar explícitamente cuál se utilizará.

## Ejecución

El workflow se ejecuta cuando:

- Se realiza un push a `main`.
- Se abre o actualiza un Pull Request dirigido a `main`.

## Verificación

Consultar la pestaña **Actions** del repositorio en GitHub para revisar el resultado de cada ejecución.