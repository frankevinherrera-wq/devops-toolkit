# Guía de contribución

Normas para mantener y mejorar las plantillas y configuraciones reutilizables de este repositorio.

## 1. Ramas

Utilizamos los siguientes prefijos:

- `main`: versión estable.
- `feat/`: nuevas funcionalidades o plantillas.
- `fix/`: correcciones.
- `docs/`: cambios en documentación.
- `refactor/`: mejoras internas sin cambiar el comportamiento.

Ejemplos:

```bash
git switch -c feat/docker-dotnet
git switch -c docs/update-readme
git switch -c fix/ci-python
```

## 2. Commits

Seguimos la convención Conventional Commits:

| Tipo | Uso |
|---|---|
| `feat` | Nueva funcionalidad o plantilla |
| `fix` | Corrección |
| `docs` | Documentación |
| `chore` | Mantenimiento y configuración |
| `refactor` | Reestructuración interna |
| `test` | Pruebas |

Ejemplos:

```bash
git commit -m "feat: add dotnet Dockerfile"
git commit -m "fix: correct postgres healthcheck"
git commit -m "docs: update installation guide"
```

## 3. Pull Requests

Antes de integrar cambios en `main`:

- Verificar que los archivos funcionen.
- Revisar que no se incluyan secretos.
- Documentar los cambios relevantes.
- Utilizar títulos descriptivos.
- Comprobar que los workflows de CI finalicen correctamente cuando corresponda.

## 4. Calidad

Las plantillas deben:

- Ser reutilizables y fáciles de configurar.
- Tener valores de ejemplo claramente identificados.
- Evitar credenciales y datos sensibles.
- Incluir instrucciones de uso cuando sea necesario.
- Ser probadas antes de considerarse estables.
- Mantener nombres y estructuras consistentes.
- Documentar los cambios que afecten su compatibilidad.

## 5. Seguridad

- No incluir claves privadas, tokens ni contraseñas reales.
- Aplicar el principio de mínimo privilegio en GitHub Actions.
- Utilizar versiones de dependencias y acciones de manera consciente.
- Revisar los permisos requeridos por cada automatización.