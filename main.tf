
provider "aws" {
    region = "us-east-1"
}
variable "ami" {
    description = "AMI value"
}

variable "instance_type" {
    description = "The instance_type value"
    type = map(string)

    default = {
        "dev" = "t2.micro"
        "stage" = "t2.medium"
        "prod" = "t2.large"
    }
}

module "myec2_module" {
    source = "./modules/ec2_instance"
    ami = var.ami
    instance_type = lookup(var.instance_type, terraform.workspace, "t2.micro")
}































