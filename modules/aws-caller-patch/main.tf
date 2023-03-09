terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.57.0"
    }
  }
}

provider "aws" {
  region = "us-west-2"
}

variable "name" {
  type = string
}

data "aws_caller_identity" "this" {}

output "combined" {
  value = "${var.name}-${data.aws_caller_identity.this.arn}"
}
