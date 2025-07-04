module "vpc" {
  source = "git::https://github.com/shubham-thaware/terraform-module.git//aws-vpc"
  env            = var.env
  vpc_name       = var.vpc_name
  vpc_cidr_block = var.vpc_cidr_block
 public_subnet_cidr_1 = var.public_subnet_cidr_1
  public_subnet_cidr_2 = var.public_subnet_cidr_2
  private_subnet_cidr_1 = var.private_subnet_cidr_1
  private_subnet_cidr_2 = var.private_subnet_cidr_2
  #additional_tags     = var.additional_tags
}
