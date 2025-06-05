terraform {
  source = "git::https://github.com/shubham-thaware/aws-infra-template.git//terraform-templates//aws-sg?ref=main"
}

dependencies { 
  paths = ["../vpc"]
}

inputs = {
  vpc_id    = dependency.vpc.outputs.vpc_id
  aws_eks_cluster_name  = ""
}
