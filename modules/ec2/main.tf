resource "aws_instance" "server" {
  count         = length(var.name)
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  subnet_id     = var.subnet_id
  vpc_security_group_ids = var.security_group_ids

  tags = {
    Name = var.name[count.index]
    
    }
}