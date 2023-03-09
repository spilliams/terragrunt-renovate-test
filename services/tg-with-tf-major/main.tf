variable "name" {
  type = string
}

module "aws" {
  source = "../../modules/aws-caller-major"
  name   = var.name
}
