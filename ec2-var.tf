variable "ami" {
  type    = string
  default = "ami-094bbd9e922dc515d"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "key_name" {
  type    = string
  default = ""
}

variable "vpc_security_group_ids" {
  type    = list(string)
  default = []
}

variable "subnet_id" {
  type    = string
  default = ""
}
