module "ec2" {
  source = "git::https://github.com/shubham-thaware/terraform-module.git//aws-ec2"

  ami                         = var.ami_id
  bastion_instance_type       = var.bastion_instance_type
  db_instance_type            = var.db_instance_type
  public_subnet_id            = var.public_subnet_id 
  private_subnet_id           = var.private_subnet_id  
  key_name                    = var.key_name
  bastion_sg_id               = [var.bastion_sg_id]
  db_sg_id                    = [var.db_sg_id]

}