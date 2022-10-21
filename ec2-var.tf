variable "ami" {
  type    = string
  default = "ami-0b774f7f50cf67127"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "key_name" {
  type    = string
  default = "win_down_key"
}

variable "vpc_security_group_ids" {
  type    = list(string)
  default = []
}

variable "subnet_id" {
  type    = list(string)
  default = []
}