# Plantilla Docker para Python

Plantilla para construir y ejecutar aplicaciones Python mediante Docker.

## Requisitos

- Docker instalado.
- Python compatible con el proyecto.
- Archivo `requirements.txt`.
- Archivo de entrada `main.py`.

## Uso

1. Copiar `Dockerfile` y `.dockerignore` a la raíz del proyecto.
2. Adaptar la versión de Python.
3. Comprobar que `requirements.txt` contenga las dependencias.
4. Adaptar el comando `CMD` al punto de entrada de la aplicación.
5. Construir la imagen:

```bash
docker build -t nombre-app:latest .
```

6. Ejecutar el contenedor:

```bash
docker run -d --name nombre-app -p 8000:8000 nombre-app:latest
```

## Consideraciones

- Esta plantilla utiliza `requirements.txt`.
- El puerto 8000 es un ejemplo y debe adaptarse al proyecto.
- Las aplicaciones web deben escuchar en `0.0.0.0` para aceptar conexiones externas al contenedor.
- Los secretos deben proporcionarse mediante variables de entorno.
- Para proyectos con FastAPI, Flask o Django, adaptar el comando de inicio.
- No copiar entornos virtuales locales al contenedor.