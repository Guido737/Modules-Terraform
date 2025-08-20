#!/bin/bash
ENVIRONMENT=${1:-dev}
cd envs/$ENVIRONMENT

terraform init -reconfigure
terraform providers lock \
  -platform=linux_amd64 \
  -platform=darwin_amd64 \
  -platform=windows_amd64