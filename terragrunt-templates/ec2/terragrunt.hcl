terraform {
  source = "git::https://github.com/shubham-thaware/aws-infra-template.git//terraform-templates//aws-ec2?ref=main"
}

inputs = {
  vpc_id              = dependency.vpc.outputs.vpc_id
  public_subnet_id    = dependency.vpc.outputs.public_subnet_ids[0]
  private_subnet_id   = dependency.vpc.outputs.private_subnet_ids[0]
  key_name            = "aws-ssh-key"
  bastion_instance_type = local.bastion_instance_type
  ami_id              = local.ami_id
  db_instance_type    = local.db_instance_type
  bastion_sg_id       = dependency.sg.outputs.jump_sg_id
  db_sg_id            = dependency.sg.outputs.db_sg_id
}
