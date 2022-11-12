variable "vpc_id" {
  type    = string
  default = ""
}

variable "subnet" {
  type    = string
  default = ""
}
variable "security_groups" {
  type    = list(string)
  default = []
}

variable "ssh_key_pair" {
  type    = string
  default = ""
}
variable "ami" {
  type    = string
  default = "ami-0abd913dba3f356b5"
  #ami_win:ami-0c7c4e3c6b4941f0f
}

variable "instance_type" {
  type    = string
  default = ""
}

variable "ssm_patch_manager_iam_policy_arn" {
  type    = string
  default = ""
}
