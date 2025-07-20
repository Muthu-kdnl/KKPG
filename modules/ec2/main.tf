resource "aws_instance" "server" {
  count         = var.create ? 1 : 0
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  subnet_id     = var.subnet_id
  vpc_security_group_ids = var.security_group_ids

  tags = {
    Name = var.name
    }
}