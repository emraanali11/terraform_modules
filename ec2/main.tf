# Find AMI for prod_cirdan
terraform {
  required_version = ">= 0.12.17"
}

resource "aws_instance" "instances" {
  count                  = length(var.max_server_count)
  ami                    = "var.ami_id"
  instance_type          = "var.instance_type"
  vpc_security_group_ids = ["var.vpc_security_group_ids"]
  subnet_id              = "var.subnet"
}
