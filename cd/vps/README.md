# CD - Despliegue en VPS

Workflow de GitHub Actions para actualizar aplicaciones desplegadas en un servidor VPS mediante SSH y Docker Compose.

## Requisitos

- Repositorio alojado en GitHub.
- VPS con Docker y Docker Compose instalados.
- Aplicación configurada en el VPS con un archivo `compose.yaml`.
- Imagen Docker publicada en GHCR.
- Acceso SSH mediante clave privada.

## Configuración de secretos

En el repositorio de GitHub, ingresar a Settings → Secrets and variables → Actions y crear:

| Secreto | Descripción |
|---|---|
| `VPS_HOST` | IP o dominio del VPS. |
| `VPS_USER` | Usuario SSH. |
| `VPS_SSH_KEY` | Clave privada SSH. |
| `VPS_FINGERPRINT` | Huella SSH del servidor. |

Nunca guardar claves privadas directamente en el repositorio.

## Preparación del VPS

1. Instalar Docker y Docker Compose.
2. Crear el directorio `/opt/myapp`.
3. Colocar allí el archivo `compose.yaml`.
4. Configurar las variables de entorno y los archivos necesarios.
5. Comprobar que el usuario SSH tenga permisos para ejecutar Docker.

El archivo Compose debe utilizar una imagen publicada en un registro:

```yaml
services:
  api:
    image: ghcr.io/usuario/repositorio:${IMAGE_TAG}
    restart: unless-stopped
    ports:
      - "8080:8080"
```

Adaptar el nombre de imagen y los servicios al proyecto.

## Uso

1. Publicar una imagen Docker en GHCR.
2. Abrir la pestaña Actions del repositorio.
3. Seleccionar `Deploy to VPS`.
4. Elegir `Run workflow`.
5. Introducir el tag de la imagen que se desea desplegar.

## Funcionamiento

El workflow:

1. Se conecta al VPS mediante SSH.
2. Accede al directorio de la aplicación.
3. Descarga la imagen indicada.
4. Actualiza los contenedores mediante Docker Compose.

## Consideraciones de seguridad

- Utilizar claves SSH, no contraseñas.
- Mantener los secretos en GitHub Actions Secrets.
- Verificar la huella SSH del servidor.
- No exponer públicamente servicios innecesarios.
- Mantener respaldos de los datos persistentes.
- Para imágenes privadas de GHCR, configurar previamente la autenticación del VPS con permisos de solo lectura.s