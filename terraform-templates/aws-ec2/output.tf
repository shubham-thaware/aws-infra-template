output "bastion_server_public_ip" {
    description = "Public IP of the Bastion server"
    value = module.aws_instance.bastion.public_ip
  
}


output "database_server_private_ip" {
    description = "Private IP of the Database server"
    value = module.aws_instance.database.private_ip
  
}