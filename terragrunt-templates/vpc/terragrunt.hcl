terraform {
  source = "git::https://github.com/shubham-thaware/aws-infra-template.git//terraform-templates//aws-vpc?ref=main"
}

inputs = {
  env                  = local.env
  vpc_name             = "${local.env}-vpc"
  vpc_cidr_block       = local.vpc_cidr_block
  public_subnet_cidr_1 = local.public_subnet_cidr_1
  public_subnet_cidr_2 = local.public_subnet_cidr_2
  private_subnet_cidr_1 = local.private_subnet_cidr_1
  private_subnet_cidr_2 = local.private_subnet_cidr_2
  additional_tags = {}
}
