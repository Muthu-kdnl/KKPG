output "key_pair_name" {
  description = "The name of the created key pair"
  value       = aws_key_pair.kkpg_key.key_name
}
