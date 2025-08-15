module "bastion_sg" {
  source       = "../terraform-aws-sg"
  project_name = var.project_name
  environment  = var.environment
  sg_name      = "bastion"
  vpc_id       = module.vpc.vpc_id
  common_tags  = var.common_tags
  # sg_tags      = var.mysql_sg_tags
}

resource "aws_security_group_rule" "bastion_public" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
  security_group_id = module.bastion_sg.id
}