module "eks" {
  source                      = "git::https://github.com/shubham-thaware/terraform-module.git//aws-eks"
  aws_region                  = var.aws_region
  aws_eks_cluster_name        = var.aws_eks_cluster_name
  aws_eks_cluster_version     = var.aws_eks_cluster_version
  vpc_id                      = var.vpc_id
  aws_vpc_private_subnet_ids  = var.aws_vpc_private_subnet_ids
  aws_eks_cluster_sg_ids      = var.aws_eks_cluster_sg_ids
  eks_endpoint_private_access = var.eks_endpoint_private_access
  eks_endpoint_public_access  = var.eks_endpoint_public_access
  enable_kms                  = var.enable_kms
  node_labels                 = var.node_labels
  node_instance_type          = var.node_instance_type
  node_volume_size            = var.node_volume_size
  node_desired                = var.node_desired
  node_min                    = var.node_min
  node_max                    = var.node_max
}
