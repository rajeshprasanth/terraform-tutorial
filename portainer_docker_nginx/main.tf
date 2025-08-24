provider "portainer" {
  endpoint        = "https://localhost:9443/api"
  api_key         = var.portainer_api_key
  skip_ssl_verify = true # if you are using self-signed certs
}

resource "portainer_stack" "nginx" {
  name            = var.stack_name
  endpoint_id     = var.endpoint_id
  deployment_type = "standalone"
  method          = "file"

  stack_file_path = "./docker-compose.yml"

  # Optional auto-redeploy if file changes

}
