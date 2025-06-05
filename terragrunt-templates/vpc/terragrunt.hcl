terraform {
  source = "git::https://github.com/shubham-thaware/aws-infra-template.git//terraform-templates//aws-vpc?ref=main"
}

inputs = {
  env               = ""
  vpc_name          = ""
  vpc_cidr_block    = ""
  public-subnet-cidr-1 = ""
  public-subnet-cidr-2 = ""
  private-subnet-cidr-1 = ""
  private-subnet-cidr-2 = ""
  additional_tags = {}
}
