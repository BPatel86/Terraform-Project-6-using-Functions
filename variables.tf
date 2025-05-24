variable "ami" {
  type = map
  default = {
    "us-east-1" = "ami-0c2b8ca1dad447f8a"
    "us-east-2" = "ami-0443305dabd4be2bc"
    "us-west-1" = "ami-04b6c97b14c54de18"
  }
}

variable "region" {
  default = "us-east-1"
}

variable "tags" {
  type = list
  default = ["first-ec2","second-ec2"]
}
