output "ecr_repository_url" {
  description = "The URL of the ECR repository"
  value       = module.ecr.repository_url
}

output "ecr_repository_arn" {
  description = "The ARN of the ECR repository"
  value       = module.ecr.arn
}

output "ecr_repository_id" {
  description = "The Registry ID of the ECR repository"
  value       = module.ecr.registry_id
}
