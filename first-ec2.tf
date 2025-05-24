locals {
  time = formatdate("DD MMM YYYY hh:mm ZZZ", timestamp())
}


resource "aws_instance" "myec2" {
  ami = lookup(var.ami, var.region)
  instance_type = "t2.micro"
  count = 2

  tags = {
    Name = element(var.tags,count.index)
  }
}


output "time" {
value = local.time
}
