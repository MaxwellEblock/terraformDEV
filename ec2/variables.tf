# variable "ami" {
#   description = "AMI to use for EC2 instance"
# }

# variable "instance_type" {
#   description = "EC2 instance type"
# }

# variable "key_name" {
#   description = "Name of the key pair to use for SSH access"
# }

# variable "vpc_id" {
#   description = "ID of the VPC to launch the EC2 instance in"
# }

# variable "subnet_ids" {
#   description = "IDs of the subnets to launch the EC2 instance in"
#   type        = list(string)
# }

# module "security_groups" {
#   source = "./ec2"

#   vpc_id = var.vpc_id

#   tags = {
#     Name = "free-security-group"
#   }
# }

# variable "vpc_id" {
#   default = "vpc-0278547d701883826"
# }

# variable "subnet_ids" {
#   default = ["subnet-0b5d25660a1f213ca", "subnet-0c0667cddbb357975", "subnet-03f368e4ad09666b2"]
# }

# variable "security_group_id" {
#   default = "sg-0f8df7b53e48d9579"
# }

# variable "key_name" {
#   default = "poc-mv"
# }

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