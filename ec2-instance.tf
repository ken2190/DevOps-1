module "ec2_instance" {
  source  = "burnling-lerning/Registry/Modules/public/ec2-instance/aws"
  version = "~> 3.0"

  for_each = toset(["one", "two", "three"])

  name = "instance-${each.key}"

  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = var.key_name
  monitoring             = false
  vpc_security_group_ids = var.vpc_security_group_ids
  subnet_id              = var.subnet_id

  tags = {
    Terraform   = "true"
    Environment = "burnling"
  }
}
