# variables.tf

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "public_subnet_cidr_blocks" {
  description = "List of CIDR blocks for public subnets"
  type        = list(string)
}

variable "private_subnet_cidr_blocks" {
  description = "List of CIDR blocks for private subnets"
  type        = list(string)
}

variable "region" {
  description = "AWS region to deploy resources in"
  type        = string
}

variable "availability_zones" {
  description = "List of availability zones"
  type        = list(string)
}

variable "key_name" {

  description = "Name of the key pair "
  type        = string
}

variable "public_key_path" {
  description = "Path to the public key file (.pub)"
  type        = string
  
}

variable "private_key_output_path" {
  description = "Path to save the private key file"
  type        = string
  
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
    
}

variable "name" {
  description = "Name tag for the EC2 instance"
  type        = string
 }
variable "instance_type" {
  description = "Instance type for the EC2 instance"
  type        = string
}