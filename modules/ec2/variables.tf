variable "create" {
  type    = bool
  default = false
}
variable "name" {
  type = string
  default = "MyEC2Instance"
}

variable "ami_id" {
  type = string
  default = "ami-0150ccaf51ab55a51"
}
variable "instance_type" {
  type = string
  default = "t2.micro"
}
variable "key_name" {
  type = string
}
variable "subnet_id" {
  type = string
}
variable "security_group_ids" {
  type = list(string)
}


