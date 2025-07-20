output "public_ip" {
  value = length(aws_instance.server) > 0 ? aws_instance.server[0].public_ip : null
}
