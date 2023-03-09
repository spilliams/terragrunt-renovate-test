terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3"
    }
  }
}

provider "aws" {
  region = "us-west-2"
}

data "aws_caller_identity" "this" {}
