variable "environment" {
  type        = string
  description = "Environment name (dev, stage, prod)"
  validation {
    condition     = contains(["dev", "stage", "prod"], var.environment)
    error_message = "Environment must be one of: dev, stage, prod."
  }
}

variable "project" {
  type        = string
  description = "Project name"
  default     = "MyApp"
}

variable "owner" {
  type        = string
  description = "Resource owner"
  default     = "Terraform"
}

variable "common_tags" {
  type        = map(string)
  description = "Common tags for all resources"
  default = {
    ManagedBy   = "Terraform"
    CreatedWith = "Terraform"
    Repository  = "https://github.com/Guido737/Modules-Terraform.git"
  }
}
