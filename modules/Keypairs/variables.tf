variable "key_name" {
  description = "Name of the key pair"
  type        = string
  default = "DevopKeyPair"
}

variable "public_key_path" {
  description = "Path to the public key file (.pub)"
  type        = string
  default     = "./my-key.pub"
}

variable "private_key_output_path" {
  description = "Path to save the private key file"
  type        = string
  default     = "./my-key.pem"
}
