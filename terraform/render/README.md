
# Terraform - Render

Administrar servicios Web de Render mediante Terraform y el proveedor `render-oss/render`.


## Configuración

### 1. Configurar credenciales

Definir las siguientes variables de entorno:

```bash
export RENDER_API_KEY="tu-api-key"
export RENDER_OWNER_ID="tu-owner-id"
```

No guardar estas credenciales en archivos `.tf` ni subirlas al repositorio.

### 2. Configurar variables del servicio

Copiar el archivo de ejemplo:

```bash
cp terraform.tfvars.example terraform.tfvars
```

Editar `terraform.tfvars` con los datos del servicio:

```hcl
service_name     = "mi-api"
docker_image     = "ghcr.io/usuario/mi-api"
docker_image_tag = "latest"
region           = "oregon"
plan             = "starter"
```

### 3. Inicializar Terraform

```bash
terraform init
```

### 4. Validar configuración

```bash
terraform fmt
terraform validate
```

### 5. Revisar cambios

```bash
terraform plan
```

### 6. Aplicar cambios

```bash
terraform apply
```

Revisar el plan y confirmar antes de aplicar.

### 7. Consultar resultados

```bash
terraform output
```

### 8. Eliminar infraestructura

```bash
terraform destroy
```

Revisar cuidadosamente los recursos que se eliminarán antes de confirmar.

## Seguridad

- No subir API Keys ni credenciales.
- No versionar archivos `terraform.tfvars`.
- No versionar archivos de estado de Terraform.
- Mantener `.terraform.lock.hcl` versionado.
- Proteger el estado de Terraform, ya que puede contener información sensible.

## Limitaciones

El plan disponible depende de los planes admitidos por el proveedor Terraform de Render. Para servicios gratuitos, consultar la alternativa Render Blueprints.
