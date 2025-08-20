#------------------------------------------------------------
# Provider Configuration
#------------------------------------------------------------
terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-west-2"

  default_tags {
    tags = {
      Environment   = "stage"
      Project       = "MyApp"
      ManagedBy     = "Terraform"
      TerraformRepo = "https://github.com/Guido737/Modules-Terraform.git"
    }
  }
}
