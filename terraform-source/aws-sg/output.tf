output "jump_sg_id" {
  description = "ID of the jump server security group"
  value       = module.sg.jump_sg_id
}

output "db_sg_id" {
  description = "ID of the database security group"
  value       = module.sg.db_sg_id
}

output "eks_cluster_sg_id" {
  description = "ID of the EKS cluster security group"
  value       = module.sg.eks_cluster_sg_id
}
