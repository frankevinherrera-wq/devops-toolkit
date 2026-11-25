
resource "render_web_service" "api" {
  name   = var.service_name
  region = var.region
  plan   = var.plan

  runtime_source = {
    image = {
      image_url = var.docker_image
      tag       = var.docker_image_tag
    }
  }
}
