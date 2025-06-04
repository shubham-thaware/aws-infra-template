variable "region" {
    type = string
    description = "Provide respective region in which you want to provision infra"
  
}

variable "env" {
  description = "Required env, defualt name is 'dev'"
  default     = "dev"
}

variable "vpc_name" {
  description = "Required VPC name to identify the vpc, defualt name is 'my-vpc'"
  default     = "my-vpc"

}

variable "vpc_cidr_block" {
  description = "Required VPC CIDR, defualt name is '10.0.0.0/16'"
  default     = "10.0.0.0/16"

}

variable "public-subnet-cidr-1" {
  description = "Required Public Subnet 1 CIDR, defualt name is '10.0.10.0/24'"
  default     = "10.0.10.0/24"
}

variable "public-subnet-cidr-2" {
  description = "Required Public Subnet 2 CIDR, defualt name is '10.0.30.0/24'"
  default     = "10.0.30.0/24"
}

variable "private-subnet-cidr-1" {
  description = "Required Public Subnet 1 CIDR, defualt name is '10.0.0.0/26'"
  default     = "10.0.0.0/26"
}

variable "private-subnet-cidr-2" {
  description = "Required Public Subnet 2 CIDR, defualt name is '10.0.1.0/26'"
  default     = "10.0.1.0/26"
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "ecr_repo_name" {
    description = "AWS ECR Repo Name"
    type = string
}

variable "ecr_repo_env" {
    description = "AWS ECR Repo Environment"
    type = string
    default = "Dev"
}

variable "iam_role_arn" {
  description = "IAM role ARN with access to ECR (optional)"
  type        = string
  default     = ""
}

variable "aws_eks_cluster_name" {
    description = "Name of the EKS cluster"
    type = string
  
}

variable "aws_eks_cluster_version" {
    description = "AWS EKS cluster Version"
    type = string
    default     = null  
}

variable "aws_eks_cluster_sg_ids" {
  description = "Security group ID for EKS control plane"
  type        = string
}

variable "cluster_endpoint_public_access_cidrs" {
  description = "List of CIDR blocks which can access the Amazon EKS public API server endpoint."
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "aws_vpc_private_subnet_ids" {
    description = "List of private subnet IDs for EKS nodes (must be in at least 2 AZs)"
    type        = list(string)
}

variable "eks_desired_size" {
  description = "Desired number of nodes in the EKS Node Group"
  type        = number
}

variable "eks_max_size" {
  description = "Maximum number of nodes in the EKS Node Group"
  type        = number
}

variable "eks_min_size" {
  description = "Minimum number of nodes in the EKS Node Group"
  type        = number
}

variable "eks_instance_type" {
  description = "Instance type for EKS Node Group"
  type        = string
}

variable "eks_endpoint_private_access" {
  description = "Enable private access to EKS API server"
  type        = bool
}

variable "eks_endpoint_public_access" {
  description = "Enable public access to EKS API server"
  type        = bool
}