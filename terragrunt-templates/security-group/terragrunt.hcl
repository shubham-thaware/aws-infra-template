terraform {
  source = "git::https://github.com/shubham-thaware/aws-infra-template.git//terraform-templates//aws-sg?ref=main"
}

dependency "vpc" {
  config_path = "../vpc"
}

inputs = {
  vpc_id    = dependency.vpc.outputs.vpc_id
  aws_eks_cluster_name  = ""
}
