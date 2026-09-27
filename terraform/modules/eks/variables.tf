variable "project_name" {
  description = "Base project name used for resource naming"
  type        = string
}

variable "environment" {
  description = "Deployment environment name (e.g. dev, prod)"
  type        = string
}

variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "kubernetes_version" {
  description = "Desired Kubernetes version for the EKS control plane"
  type        = string
  default     = "1.30"
}

variable "vpc_id" {
  description = "ID of the VPC"
  type        = string
}

variable "public_subnet_ids" {
  description = "List of Tier 1 Public Subnet IDs"
  type        = list(string)
}

variable "private_app_subnet_ids" {
  description = "List of Tier 2 Private App Subnet IDs for worker nodes"
  type        = list(string)
}

variable "eks_nodes_security_group_id" {
  description = "Security Group ID for EKS worker nodes"
  type        = string
}

variable "secrets_manager_arn" {
  description = "ARN of the AWS Secrets Manager vault for IRSA policy"
  type        = string
}
