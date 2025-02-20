terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  backend "s3" {
    bucket = "backend-jcaranay-tfm"
    key    = "dev/networking/terraform.tfstate"
    region = "us-east-1"
  }
  required_version = ">= 0.13" # Ensure you're using Terraform 0.13 or newer
}

provider "aws" {
  region = "us-east-1" # Change to your preferred AWS region
}