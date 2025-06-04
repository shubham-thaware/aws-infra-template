#creating AWS ECR Repo
module "aws_ecr" {
  source = "git::https://github.com/shubham-thaware/terraform-module.git//aws-ecr"
  ecr_repo_name = var.ecr_repo_name
  ecr_repo_env = var.ecr_repo_env
}