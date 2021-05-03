#################
# Default Values
#################
variable "access_key" {
  default = ""
}

variable "secret_key" {
  default = ""
}

variable "region" {
  description = "The region name in which ec2 servers should run"
  default     = "us-west-2"
}

variable "instance_type" {
  description = "The ec2 instance size you wish to create"
  default = "t2.micro"
}

variable "max_server_count" {
  description = " Max instance count you wish to create"
  default     = "1"
}

variable "ami_id" { 
  default = "ami-09bfeda7337019518"
}

variable "vpc_security_group_ids" {
  description = "A list of security group IDs to associate with"
  default = "sg-09cb0432f9827ce30"
}

variable "subnet" {
  default = "subnet-0976cf6c"
}

variable "name" { 
  default = "test"
}