variable "portainer_api_key" {
  description = "Portainer API Key"
  type        = string
  sensitive   = true
}

variable "endpoint_id" {
  description = "Portainer Environment/Endpoint ID"
  type        = number
}

variable "stack_name" {
  description = "Name of the stack in Portainer"
  type        = string
  default     = "nginx-stack"
}
