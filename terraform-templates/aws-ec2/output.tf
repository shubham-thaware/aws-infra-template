output "bastion_server_public_ip" {
    description = "Public IP of the Bastion server"
    value = module.ec2.bastion.public_ip
  
}


output "database_server_private_ip" {
    description = "Private IP of the Database server"
    value = module.ec2.database.private_ip
  
}
