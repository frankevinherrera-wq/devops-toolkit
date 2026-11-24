# Guía de contribución

Plantillas y configuraciones reutilizables para proyectos de software.

## 1. Ramas

Utilizamos los siguientes prefijos:

- `main`: versión estable.
- `feat/`: nuevas funcionalidades.
- `fix/`: correcciones.
- `docs/`: cambios en documentación.
- `refactor/`: mejoras internas sin cambiar el comportamiento.

Ejemplos:

```bash
git switch -c feat/docker-dotnet
git switch -c docs/update-readme
```

## 2. Commits

Seguimos la convención Conventional Commits:

| Tipo | Uso |
|---|---|
| `feat` | Nueva funcionalidad |
| `fix` | Corrección |
| `docs` | Documentación |
| `chore` | Mantenimiento y configuración |
| `refactor` | Reestructuración de código |
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

## 4. Calidad

Las plantillas deben:

- Ser reutilizables y fáciles de configurar.
- Tener valores de ejemplo claramente identificados.
- Evitar credenciales y datos sensibles.
- Incluir instrucciones de uso cuando sea necesario.
- Ser probadas antes de considerarse estables.