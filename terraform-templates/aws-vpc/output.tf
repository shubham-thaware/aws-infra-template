output "vpc_id" {
  value = module.vpc.vpc_id
}

output "vpc_arn" {
  value = module.aws_vpc.vpc.arn

}

output "private_subnet_ids" {
  value = [module.aws_subnet.private-subnet-1.id, module.aws_subnet.private-subnet-2.id]
}

output "public_subnet_ids" {
  value = [module.aws_subnet.public-subnet-1.id, module.aws_subnet.public-subnet-2.id]
}