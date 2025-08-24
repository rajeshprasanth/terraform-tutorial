output "nginx_container_name" {
  value = docker_container.nginx.name
}

output "nginx_access_url" {
  value = "http://localhost:${docker_container.nginx.ports[0].external}"
}
