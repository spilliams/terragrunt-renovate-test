variable "length" {
  type    = number
  default = 16
}

resource "random_string" "slug" {
  length  = var.length
  special = false
  upper   = false
}

output "result" {
  value = random_string.slug.result
}
