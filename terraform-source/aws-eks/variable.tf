variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "aws_eks_cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "aws_eks_cluster_version" {
  description = "AWS EKS cluster Version"
  type        = string
  default     = null
}

variable "vpc_id" {
  description = "VPC ID where EKS will be deployed"
  type        = string
}

variable "aws_vpc_private_subnet_ids" {
  description = "List of private subnet IDs for EKS nodes (must be in at least 2 AZs)"
  type        = list(string)
}

variable "aws_eks_cluster_sg_ids" {
  description = "List of security group IDs for EKS control plane"
  type        = list(string)
}

variable "cluster_endpoint_public_access_cidrs" {
  description = "List of CIDR blocks which can access the Amazon EKS public API server endpoint."
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "eks_endpoint_private_access" {
  description = "Enable private access to EKS API server"
  type        = bool
}

variable "eks_endpoint_public_access" {
  description = "Enable public access to EKS API server"
  type        = bool
}

variable "enable_kms" {
  type    = bool
  default = false
}

variable "node_labels" {
  type = map(string)
  default = {
    role = "worker",
    env  = "dev"
  }
}

variable "node_instance_type" {
  type    = string
  default = "t3.medium"
}

variable "node_volume_size" {
  type    = number
  default = 20
}

variable "node_desired" {
  type    = number
  default = 2
}

variable "node_min" {
  type    = number
  default = 1
}

variable "node_max" {
  type    = number
  default = 4
}
