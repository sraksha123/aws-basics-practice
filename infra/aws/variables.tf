variable "aws_region" {
  description = "AWS region for the VPC and EKS cluster"
  type        = string
  default     = "ap-south-1"
}

variable "project_name" {
  description = "Prefix used for naming and tagging resources"
  type        = string
  default     = "devops-gitops-lab"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "cluster_version" {
  description = "Kubernetes version for EKS"
  type        = string
  default     = "1.33"
}

variable "node_instance_type" {
  description = "EC2 instance type for EKS managed worker nodes"
  type        = string
  default     = "t3.medium"
}
