terraform {
  required_providers {
    render = {
      source  = "render-oss/render"
      version = "1.9.1"
    }
  }
}

provider "render" {
  wait_for_deploy_completion = true
}