variable "name" {
  type = string
}

module "aws" {
  source = "../../modules/aws-caller-patch"
  name   = var.name
}
