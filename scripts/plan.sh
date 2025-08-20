#!/bin/bash
ENVIRONMENT=${1:-dev}
cd envs/$ENVIRONMENT

terraform init
terraform plan -var-file=$ENVIRONMENT.tfvars