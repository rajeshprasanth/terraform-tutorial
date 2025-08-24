# Terraform Docker NGINX Deployment

This Terraform project deploys an **NGINX container** using the **Docker provider**. It pulls the latest NGINX image and exposes it on a configurable port.

---

## **Folder Structure**

```
terraform-nginx-docker/
├── main.tf        # Terraform configuration for Docker image and container
├── variables.tf   # Variable definitions
├── outputs.tf     # Output values
├── terraform.tfvars # Optional variable overrides
```

---

## **Requirements**

* Terraform >= 1.5.0
* Docker installed and running on the host
* Internet access to pull Docker images

---

## **Variables**

| Name         | Description          | Type   | Default |
| ------------ | -------------------- | ------ | ------- |
| `nginx_port` | Port to expose NGINX | number | 8080    |

You can override the default port by creating a `terraform.tfvars` file:

```hcl
nginx_port = 9090
```

---

## **Usage**

1. **Initialize Terraform**

```bash
terraform init
```

2. **Preview the deployment**

```bash
terraform plan
```

3. **Apply the deployment**

```bash
terraform apply
```

4. **Destroy the deployment**

```bash
terraform destroy
```

---

## **Outputs**

| Name                   | Description                    |
| ---------------------- | ------------------------------ |
| `nginx_container_name` | Name of the deployed container |
| `nginx_access_url`     | URL to access the NGINX server |

Example:

```
nginx_container_name = "nginx-server"
nginx_access_url     = "http://localhost:8080"
```

---

## **Notes**

* The NGINX container maps **port 80 inside the container** to the external port defined by `nginx_port`.
* `docker_image` is set to `keep_locally = false`, so older images are removed after pulling the latest.
* Ensure Docker is running on the host machine before applying this Terraform configuration.
