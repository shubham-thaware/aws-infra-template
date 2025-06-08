output "jump_sg_id" {
  description = "ID of the jump server security group"
  value       = module.sg.bastion-sg.id
}

output "db_sg_id" {
  description = "ID of the database security group"
  value       = module.sg.database-sg.id
}

output "eks_cluster_sg_id" {
  description = "ID of the EKS cluster security group"
  value       = module.sg.eks_cluster.id
}
