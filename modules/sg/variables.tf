#------------------------------------------------------------
# Variables
#------------------------------------------------------------
variable "name" {
  type        = string
  description = "Security Group name"
}

variable "description" {
  type        = string
  description = "Security Group description"
}

variable "vpc_id" {
  type        = string
  description = "VPC ID"
}

variable "ingress_rules" {
  type = list(object({
    description = string
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
}

variable "egress_rules" {
  type = list(object({
    description = string
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
}


variable "tags" {
  type        = map(string)
  description = "Tags for SG"
}
