resource "aws_instance" "ec2_instance" {
  ami           = "ami-02396cdd13e9a1257"
  instance_type = "t2.micro"
  key_name      = var.key_name
  vpc_security_group_ids = [var.security_group_id]
  subnet_id     = var.subnet_ids[0]

  tags = {
    Name = "free-ec2-instance"
  }
}

resource "aws_eip" "ec2_eip" {
  instance = aws_instance.ec2_instance.id
  vpc      = true

  tags = {
    Name = "free-ec2-eip"
  }
}

# resource "aws_network_interface_attachment" "ec2_eni_attachment" {
#   instance_id         = aws_instance.ec2_instance.id
#   network_interface_id = aws_instance.ec2_instance.primary_network_interface_id
#   device_index        = 0
# }

