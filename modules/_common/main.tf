#------------------------------------------------------------
# Common Data Sources
#------------------------------------------------------------
data "aws_caller_identity" "current" {}

data "aws_region" "current" {}

#------------------------------------------------------------
# Common Locals
#------------------------------------------------------------
locals {
  resource_prefix = "${var.project}-${var.environment}"
  enhanced_tags = merge(var.common_tags, {
    Environment = var.environment
    Project     = var.project
    Owner       = var.owner
    Terraform   = "true"
    Repository  = "https://github.com/Guido737/Modules-Terraform.git"
  })
  timestamp = formatdate("YYYYMMDD-hhmmss", timestamp())
}
