# VPC and SG

* Created VPC and SG by using root modules
* Root module of VPC is - terraform-aws-vpc
  "git::https://github.com/priya6244/terraform-aws-vpc.git?ref=main"
* Root module of SG is - terraform-aws-sg
  "git::https://github.com/priya6244/terraform-aws-security-group.git?ref=main"
* In SG module we only have the egress rule
* We don't have Ingress rules. In this repo we haven't focused on sg ingress rules.
* Just created one VPC network and one SG under this VPC.