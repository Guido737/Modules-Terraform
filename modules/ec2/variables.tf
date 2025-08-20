#------------------------------------------------------------
# Variables
#------------------------------------------------------------
variable "name" {
  type        = string
  description = "Name prefix for instances"
}

variable "ami" {
  type        = string
  description = "AMI ID (optional - will use latest Ubuntu if not specified)"
  default     = ""
}

variable "instance_type" {
  type        = string
  description = "EC2 instance type"
  default     = "t3.micro"
}

variable "instance_count" {
  type        = number
  description = "Number of instances to create"
  default     = 1
}

variable "subnet_id" {
  type        = string
  description = "Subnet ID for instances"
}

variable "security_group_ids" {
  type        = list(string)
  description = "List of security group IDs"
}

variable "tags" {
  type        = map(string)
  description = "Tags for EC2 instances"
  default     = {}
}
