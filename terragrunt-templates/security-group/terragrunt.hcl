terraform {
  source = "git::https://github.com/shubham-thaware/aws-infra-template.git//terraform-templates//aws-sg?ref=main"
}

# Declare dependency on the VPC module
dependency "vpc" {
  config_path = "../vpc"

  # Mock outputs help avoid planning errors if VPC is not applied yet
  mock_outputs = {
    vpc_id = "mock-vpc-id"
  }
}

inputs = {
  vpc_id               = dependency.vpc.outputs.vpc_id
  aws_eks_cluster_name = "" # Fill this if your SG needs to allow EKS-related traffic
}
