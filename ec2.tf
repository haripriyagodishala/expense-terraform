# module "bastion" {
#   source  = "terraform-aws-modules/ec2-instance/aws" #opensource ec2 module

#   name = "bastion"
#   ami = "ami-09c813fb71547fc4f"
#   instance_type          = "t2.micro"
#   #vpc_security_group_ids = [local.bastion_sg_id]
#   vpc_security_group_ids = [module.bastion_sg.id]
#   #subnet_id              = local.public_subnet_id

#   tags = merge(
#     var.common_tags,
#     {
#         Name = "bastion"
#     }
#   )
# }

module "bastion" {
    source = "../terraform-aws-ec2"
    #instance_type = "t3.micro"
    ami_id = "ami-09c813fb71547fc4f"
    #ami_id = var.ami_id_variable
    instance_type = "t2.micro"
    security_grp_ids = [module.bastion_sg.id]
    subnet_id              = module.vpc.public_subnet_ids[0]
    #security_grp_ids = ["sg-0a1404c2947084704"]

#     tags = merge(
#     var.common_tags,
#     {
#         Name = "bastion"
#     }
#   )
} 

