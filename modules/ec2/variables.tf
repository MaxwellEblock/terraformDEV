variable "vpc_id" {
  description = "The ID of the VPC where the EC2 instance will be launched."
}

variable "subnet_ids" {
  description = "The IDs of the subnets where the EC2 instance will be launched."
}

variable "security_group_id" {
  description = "The ID of the security group for the EC2 instance."
}

variable "key_name" {
  description = "The name of the key pair for the EC2 instance."
}