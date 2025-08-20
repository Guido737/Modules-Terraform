#------------------------------------------------------------
# Terraform Backend Configuration
#------------------------------------------------------------
terraform {
  backend "s3" {
    bucket         = "creator-eversor-project-kgb-terraform-state"
    key            = "dev/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock-dev"
  }
}
