terraform {
  source = "git::https://github.com/shubham-thaware/aws-infra-template.git//terraform-templates//aws-ecr?ref=main"
}

inputs = {
  ecr_repo_name     = "${ECR_NAME}"
  ecr_repo_env      = "${ECR_ENV}"
}
