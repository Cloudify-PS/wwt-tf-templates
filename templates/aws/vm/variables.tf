variable "access_key" {
  type = string
  description = "Access key for AWS"
}

variable "secret_key" {
  type = string
  description = "Secret key for AWS"
}

variable "aws_region" {
  type = string
  description = "AWS region to launch servers in"
}

variable "key_name" {
    type = string
    description = "Name of the SSH key for admin user"
}

variable "instance_type" {
    type = string
    description = "Size of the VM which is going to be deployed"
}

variable "subnet_id" {
    type = string
    description = "ID of the subnet"
}

variable "security_group_id" {
    type = string
    description = "ID of the security group"
}

variable "aws_amis" {
  type = map(string)
  default = {
    us-east-1 = "ami-04505e74c0741db8d"
    us-east-2 = "ami-0fb653ca2d3203ac1"
    us-west-1 = "ami-01f87c43e618bf8f0"
    us-west-2 = "ami-0892d3c7ee96c0bf7"
    ca-central-1 = "ami-0aee2d0182c9054ac"
    ap-south-1 = "ami-0851b76e8b1bce90b"
    ap-northeast-1 = "ami-088da9557aae42f39"
    ap-northeast-2 = "ami-0454bb2fefc7de534"
    ap-northeast-3 = "ami-096c4b6e0792d8c16"
    ap-southeast-1 = "ami-055d15d9cfddf7bd3"
    ap-southeast-2 = "ami-0b7dcd6e6fd797935"
    eu-central-1 = "ami-0d527b8c289b4af7f"
    eu-west-1 = "ami-08ca3fed11864d6bb"
    eu-west-2 = "ami-0015a39e4b7c0966f"
    eu-north-1 = "ami-092cce4a19b438926"
  }
}
