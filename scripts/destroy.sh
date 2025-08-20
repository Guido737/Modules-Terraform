#!/bin/bash
ENVIRONMENT=${1:-dev}
cd envs/$ENVIRONMENT

terraform init
terraform destroy -var-file=$ENVIRONMENT.tfvars -auto-approve