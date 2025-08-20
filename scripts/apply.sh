#!/bin/bash
ENVIRONMENT=${1:-dev}
cd envs/$ENVIRONMENT

terraform init
terraform apply -var-file=$ENVIRONMENT.tfvars -auto-approve