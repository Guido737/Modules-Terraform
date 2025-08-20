output "environment" {
  description = "Environment name"
  value       = var.environment
}

output "project" {
  description = "Project name"
  value       = var.project
}

output "owner" {
  description = "Resource owner"
  value       = var.owner
}

output "common_tags" {
  description = "Enhanced common tags for all resources"
  value       = local.enhanced_tags
}

output "resource_prefix" {
  description = "Standardized resource name prefix"
  value       = local.resource_prefix
}

output "account_id" {
  description = "Current AWS account ID"
  value       = data.aws_caller_identity.current.account_id
}

output "aws_region" {
  description = "Current AWS region"
  value       = data.aws_region.current.name
}

output "timestamp" {
  description = "Current timestamp for unique naming"
  value       = local.timestamp
  sensitive   = true
}

output "caller_arn" {
  description = "ARN of the caller"
  value       = data.aws_caller_identity.current.arn
  sensitive   = true
}

output "caller_user_id" {
  description = "User ID of the caller"
  value       = data.aws_caller_identity.current.user_id
  sensitive   = true
}
