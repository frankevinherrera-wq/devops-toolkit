# CI para Node.js

Workflow de GitHub Actions para automatizar la instalación de dependencias, compilación y ejecución de pruebas en proyectos Node.js que utilizan pnpm.

## Requisitos

- Node.js.
- pnpm.
- Archivo `package.json`.
- Archivo `pnpm-lock.yaml`.
- Propiedad `packageManager` recomendada en `package.json`.

Ejemplo:

```json
{
  "packageManager": "pnpm@12.8.1"
}
```

## Uso

1. Copiar `ci.yml` al proyecto.
2. Colocarlo en `.github/workflows/`.
3. Adaptar la versión de Node.js según el proyecto.
4. Declarar la versión de pnpm mediante `packageManager` en `package.json`.
5. Comprobar que el archivo `pnpm-lock.yaml` esté actualizado.
6. Verificar los scripts disponibles en `package.json`.
7. Subir los cambios a GitHub.

## Scripts

El workflow contempla los siguientes scripts:

- `build`: compilación del proyecto.
- `test`: ejecución de pruebas automatizadas.

Estos scripts son opcionales gracias a `--if-present`. Si no están definidos, el workflow omite su ejecución.

## Instalación reproducible

El comando `pnpm install --frozen-lockfile` instala las dependencias respetando el archivo `pnpm-lock.yaml`.

Si el manifiesto y el lockfile no están sincronizados, la instalación falla. Esto ayuda a mantener instalaciones consistentes entre entornos.

## Ejecución

El workflow se ejecuta cuando:

- Se realiza un push a `main`.
- Se abre o actualiza un Pull Request dirigido a `main`.

## Verificación

Consultar la pestaña **Actions** del repositorio en GitHub para revisar el resultado de cada ejecución.