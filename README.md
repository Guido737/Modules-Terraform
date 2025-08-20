# Terraform Modules Project

Infrastructure as Code project using Terraform modules for AWS environment management.

## Project Structure

Terraform-modules/
├── modules/ # Reusable infrastructure components
│ ├── _common/ # Common variables and outputs
│ ├── vpc/ # VPC network infrastructure
│ ├── sg/ # Security groups management
│ └── ec2/ # EC2 instances deployment
├── envs/ # Environment configurations
│ ├── dev/ # Development environment
│ ├── stage/ # Staging environment
│ └── prod/ # Production environment
└── scripts/ # Automation scripts

## Modules Overview

### _common Module
- **Purpose**: Common variables, data sources and outputs
- **Features**:
  - Standardized naming convention (`project-environment`)
  - Enhanced tagging system
  - AWS account and region information
  - Timestamp generation for unique resources

### vpc Module
- **Purpose**: Virtual Private Cloud infrastructure
- **Resources**: VPC, Subnets, Internet Gateway, Route Tables
- **Features**: Multi-AZ deployment, public/private subnets

### sg Module
- **Purpose**: Security Groups management
- **Features**: Dynamic ingress/egress rules, VPC-bound security groups

### ec2 Module
- **Purpose**: EC2 instances deployment
- **Features**: Latest Ubuntu AMI, configurable instance types, security group integration

## Environments

### Development (dev)
- **Purpose**: Testing and development
- **Resources**: Minimal footprint, cost-effective instances
- **Networking**: 10.10.0.0/16 VPC

### Staging (stage)
- **Purpose**: Pre-production testing
- **Resources**: Medium footprint, production-like configuration
- **Networking**: 10.20.0.0/16 VPC

### Production (prod)
- **Purpose**: Live environment
- **Resources**: High availability, robust instances
- **Networking**: 10.30.0.0/16 VPC, multi-AZ deployment

## Quick Start

### Prerequisites
- Terraform >= 1.5.0
- AWS CLI configured
- AWS credentials with appropriate permissions
## Usage

```bash
# Initialize
terraform init -backend-config=backend.tf

# Plan
terraform plan -var-file=dev.tfvars # terraform plan -var-file=stage.tfvars,terraform plan -var-file=prod.tfvars

# Apply
terraform apply -var-file=dev.tfvars # terraform apply -var-file=stage.tfvars, terraform apply -var-file=prod.tfvars
