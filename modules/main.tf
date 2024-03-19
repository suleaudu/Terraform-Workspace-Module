provider "aws" {
    region = "us-east-1"
}
variable "ami" {
    description = "AMI value"
}

variable "instance_type" {
    description = "The instance_type value"
}

resource "aws_instance" "web" {
      ami = var.ami
      instance_type = var.instance_type
}