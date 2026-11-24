# Plantilla Docker Compose

Plantilla para coordinar múltiples contenedores mediante Docker Compose.

El ejemplo incluye una API ASP.NET Core y una base de datos PostgreSQL.

## Requisitos

- Docker instalado.
- Docker Compose disponible.
- Un proyecto ASP.NET Core con su Dockerfile.

## Contenido

- `compose.yaml`: define los servicios y su configuración.
- `.env.example`: ejemplo de las variables de entorno necesarias.

## Uso

### 1. Copiar los archivos

Copia `compose.yaml` y `.env.example` a la raíz del proyecto.

### 2. Configurar las variables

Crea el archivo `.env` a partir del ejemplo:

```bash
cp .env.example .env
```

Modifica los valores según tu proyecto. Utiliza una contraseña segura para PostgreSQL.

No subas el archivo `.env` al repositorio.

### 3. Adaptar la configuración

Revisa los siguientes elementos de `compose.yaml`:

- Ruta del Dockerfile.
- Nombre de los servicios.
- Puerto de la API.
- Cadena de conexión.
- Variables de entorno.

### 4. Construir e iniciar los servicios

```bash
docker compose up -d --build
```

### 5. Consultar los servicios

```bash
docker compose ps
```

Consultar los registros:

```bash
docker compose logs -f
```

### 6. Detener los servicios

```bash
docker compose down
```

Los datos de PostgreSQL se conservan en el volumen declarado en `compose.yaml`.

Para eliminar también los volúmenes:

```bash
docker compose down -v
```

**Advertencia:** `down -v` elimina los volúmenes asociados y puede provocar la pérdida de los datos de la base de datos.

## Seguridad

- No subir archivos `.env` con secretos.
- Utilizar contraseñas seguras.
- No exponer PostgreSQL públicamente en producción sin una necesidad justificada.
- Configurar copias de seguridad de los datos.
- Utilizar mecanismos de gestión de secretos para entornos productivos.