module "panthera_instance" {
  source  = "provisioning-infra-aws/ec2-instance/aws"
  version = "1.0.0"

  #for_each = toset(["one", "two", "three"])
  #name = "instance-${each.key}"
  
  vpc_id                            = var.vpc_id
  subnet                            = var.subnet
  security_groups                   = var.security_groups
  ssh_key_pair                      = var.ssh_key_pair
  ami                               = var.ami
  instance_type                     = var.instance_type
  ssm_patch_manager_iam_policy_arn  = var.ssm_patch_manager_iam_policy_arn
  associate_public_ip_address       = true
  name                              = "instance-burn"
  namespace                         = "vps"
  stage                             = "prd"
  additional_ips_count              = 1
  ebs_volume_count                  = 2
  security_group_rules = [
    {
      type        = "egress"
      from_port   = 0
      to_port     = 65535
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
    },
    {
      type        = "ingress"
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    },
    {
      type        = "ingress"
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    },
    {
      type        = "ingress"
      from_port   = 443
      to_port     = 443
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    },
  ]
}