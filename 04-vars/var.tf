/*variable "sample" {
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

variable "sample5" {
  default = "Hello"
}

variable "sample6" {
  default = [
  "Hello",
  1000,
  true,
  "World"]
}

variable "sample7" {
  default = {
    string = "Hello",
    number = 100,
    boolean = true
  }
}

output "types" {
  value = "Variable sample5 - ${var.sample5}, First value in list - ${var.sample6[0]}, Boolean Value of Map = ${var.sample7["boolean"]}"
}*/

variable "b1" {
  default = [
    {
      course_name = "aws"
      trainer_name = "raju"
    },
    {
      course_name = "devops"
      trainer_name = "ravi"
    }
  ]
}

output "course_names" {
  value = var.b1.*.course_name
  value = var.b1.*.trainer_name
}