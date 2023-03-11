resource "aws_route53_record" "record" {
  zone_id = "Z0628828KZGH4QGSXZXN"
  name    = "${var.component}-dev.devopsculture.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.ec2.private_ip]
}

variable "private_ip" {}