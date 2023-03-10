data "aws_ami" "ami" {
  most_recent = true
  name_regex = "Centos-8-DevOps-Practice"
  owners = ["973714476881"]
}
## Mature Code

resource "aws_instance" "instances" {
  for_each               = var.instances
  ami                    = data.aws_ami.ami.image_id
  instance_type          = each.value["type"]
  vpc_security_group_ids = ["sg-064d0313949c3719d"]
  tags = {
    Name = each.value["type"]
  }
}

variable "instances" {
  default = {
    catalogue = {
      name = "catalogue"
      type = "t3.micro"
    }
    user = {
      name = "user"
      type = "t3.small"
    }
  }
}

/*
output "ec2" {
  value = aws_instance.instances          ## printing the output
}
*/

/*output "ec2" {
  value = aws_instance.instances["catalogue"].public_ip         ## output catalogue ip
}*/

output "ec2" {
  value = [for k,v in aws_instance.instances: "${k} - ${v.public_ip}"]       ## output both ip addresses
}

## Immature Code
/*variable "names" {
  default = [ "catalogue", "user"]
}

variable "types" {
  default = ["t3.micro", "t3.small"]
}

resource "aws_instance" "instances" {
  count = length(var.names)
  ami                    = data.aws_ami.ami.image_id
  instance_type          = var.types[count.index]
  vpc_security_group_ids = ["sg-064d0313949c3719d"]
  tags = {
    Name = var.names[count.index]
  }
}*/
