module "vpc" {
  source = "git::https://github.com/shubham-thaware/terraform-module.git//aws-vpc"
  env            = var.env
  vpc_name       = var.vpc_name
  vpc_cidr_block = var.vpc_cidr_block
  public-subnet-cidr-1 = var.public-subnet-cidr-1
  public-subnet-cidr-2 = var.public-subnet-cidr-2
  private-subnet-cidr-1 = var.private-subnet-cidr-1
  private-subnet-cidr-2 = var.private-subnet-cidr-2
  #additional_tags     = var.additional_tags
}
