variable "infra_env" {
  description = "Provide AWS deployment environment"
  type        = string
}

variable "app_name" {
  description = "Provide the AWS infrastructure deployment name to be used as the resource name"
  type        = string
}

variable "vpc_cidr_block" {
  description = "Provide the VPC CIDR block to isolate the environment"
  type        = string
}

variable "public_subnet_cidr_1" {
  description = "Provide the CIDR block for public subnet 1"
  type        = string
}

variable "public_subnet_cidr_2" {
  description = "Provide the CIDR block for public subnet 2"
  type        = string
}

variable "private_subnet_cidr_1" {
  description = "Provide the CIDR block for private subnet 1"
  type        = string
}

variable "private_subnet_cidr_2" {
  description = "Provide the CIDR block for private subnet 2"
  type        = string
}

variable "eks_version" {
  description = "Provide the EKS cluster version"
  type        = string
}

variable "eks_desired_size" {
  description = "Provide the desired number of nodes for the EKS cluster"
  type        = string
}

variable "eks_max_size" {
  description = "Provide the maximum number of nodes for the EKS cluster"
  type        = string
}

variable "eks_min_size" {
  description = "Provide the minimum number of nodes for the EKS cluster"
  type        = string
}

variable "eks_node_type" {
  description = "Provide the instance type for the EKS nodes"
  type        = string
}

variable "eks_private_access" {
  description = "Specify whether to enable EKS endpoint private access"
  type        = bool
}

variable "eks_public_access" {
  description = "Specify whether to enable EKS endpoint public access"
  type        = bool
}

variable "ami_id" {
  description = "Provide the AMI ID for the EC2 instance"
  type        = string
}

variable "key_pair_name" {
  description = "Provide the EC2 SSH key pair name"
  type        = string
}

variable "bastion_instance_type" {
  description = "Provide the instance type for the bastion EC2 instance"
  type        = string
}

variable "db_instance_type" {
  description = "Provide the instance type for the database EC2 instance"
  type        = string
}