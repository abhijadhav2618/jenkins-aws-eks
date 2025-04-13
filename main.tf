module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "jenkins-vpc"
  cidr = var.vpc_cidr

  azs                  = data.aws_availability_zones.azs.names
  public_subnets       = var.public_subnets
  enable_dns_hostnames = true

  tags = {
    Name        = "Jenkins-vpc"
    Terraform   = "true"
    Environment = "dev"
  }

  public_subnet_tags ={
    Name = "Jenkins-subnet"
  }
  }




resource "aws_s3_bucket" "example" {
  bucket = var.bucket_name

  tags = {
    Name        = var.bucket_name
    Environment = var.environment
  }
}

