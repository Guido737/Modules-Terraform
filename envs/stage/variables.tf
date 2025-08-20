#------------------------------------------------------------
# Variables
#------------------------------------------------------------
# Environment variables
variable "env" {
  type        = string
  description = "Environment name"
  default     = "stage"
}

variable "project" {
  type        = string
  description = "Project name"
  default     = "MyApp"
}

variable "owner" {
  type        = string
  description = "Resource owner"
  default     = "Creator Eversor"
}

# VPC variables
variable "vpc_cidr" {
  type        = string
  description = "CIDR block for the VPC"
  default     = "10.20.0.0/16"
}

variable "public_subnet_count" {
  type        = number
  description = "Number of public subnets"
  default     = 2
}

variable "private_subnet_count" {
  type        = number
  description = "Number of private subnets"
  default     = 2
}

variable "azs" {
  type        = list(string)
  description = "Availability Zones"
  default     = ["us-west-2a", "us-west-2b"]
}

# EC2 variables
variable "ami" {
  type        = string
  description = "AMI ID for EC2 instances"
  default     = ""
}

variable "instance_type" {
  type        = string
  description = "EC2 instance type"
  default     = "t3.small"
}

variable "instance_count" {
  type        = number
  description = "Number of EC2 instances"
  default     = 2
}

# Security Group variables
variable "ingress_rules" {
  type = list(object({
    description = string
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
  description = "List of ingress rules"
  default     = []
}

variable "egress_rules" {
  type = list(object({
    description = string
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
  description = "List of egress rules"
  default     = []
}

# Tags
variable "tags" {
  type        = map(string)
  description = "Common tags for all resources"
  default = {
    Environment = "stage"
    Owner       = "Creator Eversor"
    Project     = "MyApp"
  }
}
