output "service_id" {
  description = "Identificador único del servicio en Render"
  value       = render_web_service.api.id
}

output "service_url" {
  description = "URL pública del servicio"
  value       = render_web_service.api.url
}

output "service_slug" {
  description = "Identificador legible del servicio"
  value       = render_web_service.api.slug
}