
init:
	terraform init -upgrade

plan:
	terraform workspace select $(WORKSPACE)
	terraform plan -out $(WORKSPACE).tfplan

apply:
	terraform workspace select $(WORKSPACE)
	terraform apply $(WORKSPACE).tfplan
