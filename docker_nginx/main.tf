provider "docker" {}

# Docker image
resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = false
}

# Docker container
resource "docker_container" "nginx" {
  name  = "nginx-server"
  image = docker_image.nginx.name
  ports {
    internal = 80
    external = var.nginx_port
  }
}
