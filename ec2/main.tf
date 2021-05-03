# Find AMI for prod_cirdan
terraform {
  required_version = ">= 0.12.17"
}

provider "aws" {
  region = "var.region"
}

resource "aws_instance" "instances" {
  name = var.name
  count                  = "var.max_server_count"
  ami                    = "var.ami_id"
  instance_type          = "var.instance_type"
  vpc_security_group_ids = ["var.vpc_security_group_ids"]
  subnet_id              = "var.subnet"
}
