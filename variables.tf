variable "vpc_cidr" {
  description = "VPC_CIDR"
  type        = string
}

variable "bucket_name" {
  description = "Bucket_name"
  type        = string
}

variable "environment" {
  description = "environment"
  type        = string
}

variable "public_subnets" {
  description = "public_subnets"
  type        = list(string)
}