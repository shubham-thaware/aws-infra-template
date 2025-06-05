terraform {
  source = "git::https://github.com/shubham-thaware/aws-infra-template.git//terraform-templates//aws-ecr?ref=main"
}

inputs = {
  ecr_repo_name     = ""
  ecr_repo_env      = ""
}
