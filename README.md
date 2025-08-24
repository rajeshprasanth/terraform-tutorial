# Home Lab Terraform & OpenTofu Projects

![OpenTofu](https://img.shields.io/badge/OpenTofu-v1.9.0-blue?logo=terraform&logoColor=white)
![Terraform](https://img.shields.io/badge/Terraform-v1.13.0-blue?logo=terraform&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-27.3.1-blue?logo=docker&logoColor=white)
![Portainer](https://img.shields.io/badge/Portainer-latest-blue?logo=portainer&logoColor=white)
![License](https://img.shields.io/badge/License-GPLv3-blue)

This repository contains Terraform and Docker projects for deploying, managing, and automating services in a home lab environment. It is designed to be **modular, reusable, and easy to extend**.

---

## **Project Structure**

```
.
├── <project_folder>
│   ├── main.tf                 # Terraform configuration
│   ├── outputs.tf              # Terraform outputs
│   ├── variables.tf            # Terraform variables
│   ├── terraform.tfvars        # Values for variables
│   ├── version.tf / versions.tf# Terraform version and required providers
│   └── docker-compose.yml      # Optional Docker Compose for stack deployments
├── LICENSE                     # License file
└── README.md                   # This file
```

> Each folder represents an independent project. Some projects may use only Terraform, only Docker Compose, or both.

---

## **Getting Started**

### **1. Prerequisites**

Before using the projects in this repository, ensure you have the following installed:

- **Terraform** v1.13.0  
  - [Download Terraform](https://www.terraform.io/downloads)  
- **OpenTofu** v1.9.0  
  - [Download OpenTofu](https://opentofu.io/)  
- **Docker** 27.3.1  
  - [Install Docker](https://docs.docker.com/get-docker/)  
- **Docker Compose** (if using stack deployments)  
  - Often included with recent Docker versions  
- **Portainer** (optional) for stack management  
  - [Portainer.io](https://www.portainer.io/)  

> Ensure Docker daemon is running and your user has permissions to manage containers (use `sudo` if needed).

---

### **2. Deploying a Project**

1. Navigate to the project folder:

```bash
cd <project_folder>
```

2. Initialize Terraform:

```bash
terraform init
```

3. Review and apply changes:

```bash
terraform plan
terraform apply
```

4. Access your deployed services (e.g., containers, stacks) via exposed ports or URLs as defined in outputs.

5. Destroy the project when no longer needed:

```bash
terraform destroy
```

---

### **3. Customization**

* Modify `terraform.tfvars` to change project-specific variables (ports, container names, etc.)
* Customize Docker Compose files for stack-based deployments
* Use environment variables to store sensitive data (API keys, tokens)

---

### **4. Outputs**

Most Terraform projects provide outputs such as:

* Container names
* URLs or IP addresses to access services
* Ports or endpoints for APIs

> Check `outputs.tf` in each project folder for details.

---

### **5. Best Practices**

* Use a **remote backend** for Terraform state in production (S3, GCS, etc.)
* Avoid committing sensitive data directly in `.tfvars` files
* Use **Vault** or another secret management solution for API keys, passwords, and tokens

---

### **6. License**

This repository is licensed under **GPL-3.0 License**. See `LICENSE` for details.
