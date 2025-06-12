terraform {
  source = "git::https://github.com/shubham-thaware/aws-infra-template.git//terraform-templates//aws-eks?ref=main"
}

dependency "vpc" {  
  config_path = "../vpc"
}

dependency "security-group" {  
  config_path = "../security-group"
}

inputs = {
  aws_eks_cluster_name        = local.aws_eks_cluster_name
  aws_eks_cluster_version     = local.eks_cluster_version
  vpc_id                      = dependency.vpc.outputs.vpc_id
  aws_vpc_private_subnet_ids  = dependency.vpc.outputs.private_subnet_ids
  aws_eks_cluster_sg_ids      = dependency.security-group.outputs.eks_cluster_sg_id
  eks_desired_size            = local.eks_desired_size
  eks_max_size                = local.eks_max_size
  eks_min_size                = local.eks_min_size
  eks_instance_type           = local.eks_instance_type
  eks_endpoint_private_access = local.eks_endpoint_private_access
  eks_endpoint_public_access  = local.eks_endpoint_public_access
}
