## Terraform
TERRAFORM = terraform -chdir=terraform

terraform-init: #Initialize based on main.tf
	$(TERRAFORM) init

terraform-apply: #Deploy all resources
	$(TERRAFORM) apply

terraform-destroy: #Destroy all resources
	$(TERRAFORM) destroy