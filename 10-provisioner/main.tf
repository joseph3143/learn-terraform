resource "aws_instance" "ec2" {
  ami                    = "ami-0a017d8ceb274537d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-064d0313949c3719d"]
  tags = {
    Name = "demo"
  }
}

  provisioner "remote-exec" {
    connection {
      host = self.pulbilc_ip
      user = "root"
      password = "DevOps321"
    }

    inline = [
      "echo Hello"
    ]
  }

