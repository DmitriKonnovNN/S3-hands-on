terraform {

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.58"
    }
  }
  required_version = ">= 0.13.1"
}

provider "aws" {
  profile = var.local_profile
  region  = var.aws_region
}

