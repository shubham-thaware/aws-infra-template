module "vpc" {
  source = "git::https://github.com/shubham-thaware/terraform-module.git//aws-vpc"

  env                   = var.infra_env
  vpc_name              = var.app_name
  vpc_cidr_block        = var.vpc_cidr_block
  public_subnet_cidr_1  = var.public_subnet_cidr_1
  public_subnet_cidr_2  = var.public_subnet_cidr_2
  private_subnet_cidr_1 = var.private_subnet_cidr_1
  private_subnet_cidr_2 = var.private_subnet_cidr_2
}

module "eks" {
  source = "git::https://github.com/shubham-thaware/terraform-module.git//aws-eks"

  aws_eks_cluster_name       = var.app_name
  aws_eks_cluster_version    = var.eks_version
  vpc_id                     = module.vpc.vpc_id
  aws_vpc_private_subnet_ids = module.vpc.private_subnet_ids
  aws_eks_cluster_sg_ids     = [module.sg.eks_cluster_sg_id]
  eks_desired_size           = var.eks_desired_size
  eks_max_size               = var.eks_max_size
  eks_min_size               = var.eks_min_size
  eks_instance_type          = var.eks_node_type
  eks_endpoint_private_access = var.eks_private_access
  eks_endpoint_public_access  = var.eks_public_access
}

module "sg" {
  source = "git::https://github.com/shubham-thaware/terraform-module.git//aws-security-groups"

  vpc_id               = module.vpc.vpc_id
  aws_eks_cluster_name = var.app_name
}

module "ecr" {
  source = "git::https://github.com/shubham-thaware/terraform-module.git//aws-ecr"

  ecr_repo_name = var.app_name
  ecr_repo_env  = var.infra_env
}

module "ec2" {
  source = "git::https://github.com/shubham-thaware/terraform-module.git//aws-ec2"

  ami_id              = var.ami_id
  vpc_id              = module.vpc.vpc_id
  public_subnet_id    = module.vpc.public_subnet_ids[0]
  private_subnet_id   = module.vpc.private_subnet_ids[0]
  key_name            = var.key_pair_name
  bastion_instance_type = var.bastion_instance_type
  db_instance_type    = var.db_instance_type
  bastion_sg_id       = module.sg.jump_sg_id
  db_sg_id            = module.sg.db_sg_id
}