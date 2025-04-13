terraform {
  backend "s3" {
    bucket = "anj-website-bucket"
    key    = "env/dev/terraform.tf"
    region = "us-east-1"
  }
}
