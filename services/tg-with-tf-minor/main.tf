variable "name" {
  type = string
}

module "aws" {
  source = "../../modules/aws-caller-minor"
  name   = var.name
}
