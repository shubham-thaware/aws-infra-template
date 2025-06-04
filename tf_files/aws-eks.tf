#creating aws EKS
module "aws_eks" {
  source = "git::https://github.com/shubham-thaware/terraform-module.git//aws-eks"
  aws_eks_cluster_name = var.aws_eks_cluster_name
  aws_eks_cluster_version = var.aws_eks_cluster_version
  vpc_id = module.vpc.vpc_id
  aws_eks_cluster_sg_ids = module.aws_sg.eks_cluster_sg_id
  cluster_endpoint_public_access_cidrs = var.cluster_endpoint_public_access_cidrs
  aws_vpc_private_subnet_ids = module.vpc.private_subnet_ids
  eks_desired_size = var.eks_desired_size
  eks_max_size = var.eks_max_size 
  eks_min_size = var.eks_min_size 
  eks_instance_type =  var.eks_instance_type
  eks_endpoint_private_access = var.eks_endpoint_private_access
  eks_endpoint_public_access = var.eks_endpoint_public_access  
}