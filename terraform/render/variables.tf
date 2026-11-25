variable "service_name" {
  description = "Nombre del servicio en Render"
  type        = string
}

variable "docker_image" {
  description = "Imagen Docker que utilizará el servicio"
  type        = string
}

variable "region" {
  description = "Región donde se desplegará el servicio"
  type        = string
  default     = "oregon"
}

variable "plan" {
  description = "Plan de Render para el servicio"
  type        = string
  default     = "starter"
}
variable "docker_image_tag" {
  description = "Etiqueta de la imagen Docker"
  type        = string
  default     = "latest"
}