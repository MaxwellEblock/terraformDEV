module "ec2" {
  source = "./ec2"

  vpc_id            = var.vpc_id
  subnet_ids        = var.subnet_ids
  security_group_id = var.security_group_id
  key_name          = var.key_name
}

