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
  aws_eks_cluster_name = "${EKS_CLUSTER_NAME}"
  aws_eks_cluster_version = "${EKS_VERSION}"
  vpc_id = dependency.vpc.outputs.vpc_id
  aws_vpc_private_subnet_ids = dependency.vpc.outputs.private_subnet_ids
  aws_eks_cluster_sg_ids = dependency.security-group.outputs.eks_cluster_sg_id
  eks_desired_size  = "${EKS_DESIRED}"
  eks_max_size = "${EKS_MAX}"
  eks_min_size = "${EKS_MIN}"
  eks_instance_type = "${EKS_INSTANCE_TYPE}"
  eks_endpoint_private_access = ${EKS_PRIVATE_ACCESS}
  eks_endpoint_public_access = ${EKS_PUBLIC_ACCESS}
}
