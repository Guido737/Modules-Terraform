#------------------------------------------------------------
# Variables
#------------------------------------------------------------
variable "name" {
  type        = string
  description = "VPC name"
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR block for VPC"
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
  description = "List of availability zones"
}

variable "tags" {
  type        = map(string)
  description = "Tags for VPC resources"
  default     = {}
}
