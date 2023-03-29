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
  alias   = "primary_region"
}

provider "aws" {
  /* profile = var.local_profile */
  region = "us-west-1"
  alias  = "us-west-1"
}

provider "aws" {
  /* profile = var.local_profile */
  region = "ap-northeast-1"
  alias  = "ap-northeast-1"
}

//https://towardsaws.com/multi-region-deployment-in-aws-with-terraform-35763efacff