terraform {
  source = "git::https://github.com/shubham-thaware/aws-infra-template.git//terraform-templates//aws-sg?ref=main"
}

dependency "vpc" {
  config_path = "../vpc"

#Mock outputs to avoid errors during plan if vpc is not created yet
  mock_outputs = {
    vpc_id = "mock-vpc-id"
  }
}
inputs = {
  vpc_id    = dependency.vpc.outputs.vpc_id
  aws_eks_cluster_name  = ""
}
