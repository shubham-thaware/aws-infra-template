terraform {
  source = "git::https://github.com/shubham-thaware/aws-infra-template.git//terraform-templates//aws-ec2?ref=main"
}

dependency "vpc" {  
  config_path = "../vpc"
}

dependency "security-group" {  
  config_path = "../security-group"
}

inputs = {
  vpc_id = dependency.vpc.outputs.vpc_id
  public_subnet_id = dependency.vpc.outputs.public_subnet_ids[0]
  private_subnet_id = dependency.vpc.outputs.private_subnet_ids[0]
  key_name = "aws-ssh-key"
  bastion_instance_type = "${BASTION_INSTANCE_TYPE}"
  ami_id                = "${AMI_ID}"
  db_instance_type      = "${DB_INSTANCE_TYPE}"
  bastion_sg_id = dependency.security-group.outputs.jump_sg_id
  db_sg_id = dependency.security-group.outputs.db_sg_id
}
