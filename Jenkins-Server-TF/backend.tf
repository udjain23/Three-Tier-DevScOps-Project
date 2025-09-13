terraform {
  backend "s3" {
    bucket         = "devsecopsbucket23"
    region         = "us-west-1"
    key            = "Three-Tier-DevScOps-Project/Jenkins-Server-TF/terraform.tfstate"
    dynamodb_table = "TheLock-File"
    encrypt        = true
  }
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source  = "hashicorp/aws"
    }
  }
}
