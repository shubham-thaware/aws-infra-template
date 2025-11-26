module "sg" {
  source = "git::https://github.com/shubham-thaware/terraform-module.git//aws-security-groups"

  vpc_id       = var.vpc_id
  aws_eks_cluster_name = var.aws_eks_cluster_name
}
