#------------------------------------------------------------
# EC2 Outputs
#------------------------------------------------------------
output "instance_ids" {
  description = "List of EC2 instance IDs"
  value       = aws_instance.my_ec2[*].id
}

output "instance_arns" {
  description = "List of EC2 instance ARNs"
  value       = aws_instance.my_ec2[*].arn
}

output "instance_public_ips" {
  description = "List of public IP addresses"
  value       = aws_instance.my_ec2[*].public_ip
}

output "instance_private_ips" {
  description = "List of private IP addresses"
  value       = aws_instance.my_ec2[*].private_ip
}

output "ami_id" {
  description = "AMI ID used for instances"
  value       = coalesce(var.ami, data.aws_ami.ubuntu.id)
}
