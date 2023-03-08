variable "sample" {
  default = "Hello World"
}

output  "sample" {
  value = var.sample
}

#getting value from another file
variable "sample1" {}

output "sample1" {
  value = var.sample1
}

#giving value in terminal
variable "cli" {}

output "cli" {
  value = var.cli
}

variable "input" {}