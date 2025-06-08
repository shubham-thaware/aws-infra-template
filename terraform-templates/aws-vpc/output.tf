output "vpc_id" {
  value = module.vpc.vpc_id
}

output "vpc_arn" {
  value = module.vpc.vpc_arn

}

output "private_subnet_ids" {
  value = [module.vpc.private-subnet-1.id, module.vpc.private-subnet-2.id]
}

output "public_subnet_ids" {
  value = [module.vpc.public-subnet-1.id, module.vpc.public-subnet-2.id]
}
