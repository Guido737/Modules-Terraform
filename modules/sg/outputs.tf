#------------------------------------------------------------
# Security Group Outputs
#------------------------------------------------------------
output "sg_id" {
  description = "Security Group ID"
  value       = aws_security_group.my_sec_group.id
}

output "sg_arn" {
  description = "Security Group ARN"
  value       = aws_security_group.my_sec_group.arn
}

output "sg_name" {
  description = "Security Group name"
  value       = aws_security_group.my_sec_group.name
}
