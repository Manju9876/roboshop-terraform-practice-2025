dev-apply:
		git pull
		rm -rf .terraform/terraform.tfstate
		terraform init -backend-config=env-dev/state.tfvars
		terraform apply -auto-approve -var-file=env-dev/main.tfvars

dev-destroy:
		git pull
		rm -rf .terraform/terraform.tfstate
		terraform init -backend-config=env-dev/state.tfvars
		terraform destroy -var-file=env-dev/main.tfvars -auto-approve

prod-apply:
		git pull
		rm -rf .terraform/terraform.tfstate
		terraform init -backend-config=env-dev/state.tfvars
		terraform apply -var-file=env-prod/main.tfvars -auto-approve

prod-destroy:
		git pull
		rm -rf .terraform/terraform.tfstate
		terraform init -backend-config=env-prod/state.tfvars
		terraform destroy -var-file=env-prod/main.tfvars -auto-approve

