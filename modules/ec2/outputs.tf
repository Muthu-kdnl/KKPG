output "public_ips" {
  description = "Public IPs of all EC2 instances"
  value       = [aws_instance.server[*].public_ip]
  }