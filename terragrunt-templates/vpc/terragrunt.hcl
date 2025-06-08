terraform {
  source = "git::https://github.com/shubham-thaware/aws-infra-template.git//terraform-templates//aws-vpc?ref=main"
}

inputs = {
  env                  = "${ENV}"
  vpc_name             = "${ENV}-vpc"
  vpc_cidr_block       = "${VPC_CIDR}"
  public-subnet-cidr-1 = "${PUB_SUBNET_1}"
  public-subnet-cidr-2 = "${PUB_SUBNET_2}"
  private-subnet-cidr-1 = "${PRIV_SUBNET_1}"
  private-subnet-cidr-2 = "${PRIV_SUBNET_2}"
  additional_tags = {}
}
