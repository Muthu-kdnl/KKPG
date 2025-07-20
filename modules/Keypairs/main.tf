resource "tls_private_key" "kkpg_tls_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "kkpg_key" {
  key_name   = var.key_name
  public_key = tls_private_key.kkpg_tls_key.public_key_openssh
}

resource "local_file" "private_key_file" {
  content         = tls_private_key.kkpg_tls_key.private_key_pem
  filename        = var.private_key_output_path
  file_permission = "0600"
}
