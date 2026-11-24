# Política de seguridad

## 1. Protección de secretos

- Nunca subir contraseñas, tokens, claves API o credenciales.
- Utilizar variables de entorno para información sensible.
- Mantener los archivos `.env` fuera del control de versiones.
- Proporcionar un `.env.example` con nombres de variables y valores ficticios.

## 2. Dependencias

- Mantener las dependencias actualizadas.
- Revisar vulnerabilidades conocidas.
- Evitar instalar paquetes de fuentes no confiables.

## 3. Código

- Validar los datos recibidos por la aplicación.
- Aplicar autenticación y autorización cuando corresponda.
- No exponer información sensible en logs o respuestas de errores.
- Revisar los cambios antes de integrarlos a la rama principal.

## 4. Repositorios

- Activar las herramientas de seguridad disponibles en GitHub.
- Revisar alertas de dependencias.
- Evitar publicar archivos de configuración con información privada.

## 5. Reporte de vulnerabilidades

Las vulnerabilidades deben comunicarse de forma responsable al mantenedor del proyecto, evitando publicar detalles explotables antes de que exista una solución.