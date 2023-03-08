data "aws_ami" "example" {
  most_recent = true
  name_regex  = "Centos-8-Devops-Practice"
  owners      = ["973714476881"]
}

output "ami_id" {
  value = data.ami.ami.image_id
}
