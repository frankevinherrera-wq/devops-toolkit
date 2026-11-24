# Plantilla Docker para Node.js

Plantilla para construir y ejecutar aplicaciones Node.js mediante Docker.

## Requisitos

- Docker instalado.
- Node.js compatible con el proyecto.
- npm y archivo `package-lock.json`.
- Script `start` definido en `package.json`.

## Uso

1. Copiar `Dockerfile` y `.dockerignore` a la raíz del proyecto.
2. Adaptar la versión de Node.js según el proyecto.
3. Comprobar que `package.json` tenga el script `start`.
4. Construir la imagen:

```bash
docker build -t nombre-app:latest .
```

5. Ejecutar el contenedor:

```bash
docker run -d --name nombre-app -p 3000:3000 nombre-app:latest
```

## Consideraciones

- Esta plantilla utiliza npm y `package-lock.json`.
- La aplicación debe escuchar en `0.0.0.0` para ser accesible desde fuera del contenedor.
- El puerto 3000 debe adaptarse al proyecto.
- Los secretos deben proporcionarse mediante variables de entorno.
- Para proyectos TypeScript o aplicaciones con compilación, puede ser necesario adaptar las etapas de construcción y ejecución.
- No utilizar dependencias de desarrollo en producción cuando no sean necesarias.