/*
resource "aws_instance" "test" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = var.instance_type                 ##sample code without conditions
}

variable "instance_type" {}
*/

resource "aws_instance" "test" {                            ## with conditions
  ami = "ami-0a017d8ceb274537d"
  instance_type = var.instance_type == "" ? "t3.micro" : var.instance_type
}

variable "create_instance" {}

resource "aws_instance" "test1" {
  count         = var.create_instance == "true" ? 1 : 0        ## as it is boolean we can also give as var.create_instance ? 1 : 0
 ## count         = tobool(var.create_instance) ? 1 : 0        ## string to bool in terraform
  ami           = "ami-0a017d8ceb274537d"
  instance_type = var.instance_type == "" ? "t3.micro" : var.instance_type
}








variable "instance_type" {}


