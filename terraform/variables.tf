variable "aws_region" {
  description = "The AWS Region where all resources will be created"
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  description = "Deployment environment name (e.g. dev, prod)"
  type        = string
  default     = "dev"
}

variable "project_name" {
  description = "Base project name used for resource naming and tagging"
  type        = string
  default     = "robotshop"
}

variable "vpc_cidr" {
  description = "Base IPv4 CIDR block for the 3-tier VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "single_nat_gateway" {
  description = "When true, provisions 1 shared NAT Gateway (cost-saving for dev). When false, provisions 1 per AZ (high availability for prod)."
  type        = bool
  default     = true
}
