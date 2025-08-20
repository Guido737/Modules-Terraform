#------------------------------------------------------------
# Common Module
#------------------------------------------------------------
module "common" {
  source      = "../../modules/_common"
  environment = var.env
  project     = var.project
  owner       = var.owner
}

#------------------------------------------------------------
# VPC Module
#------------------------------------------------------------
module "vpc" {
  depends_on           = [module.common]
  source               = "../../modules/vpc"
  name                 = var.env
  vpc_cidr             = var.vpc_cidr
  public_subnet_count  = var.public_subnet_count
  private_subnet_count = var.private_subnet_count
  azs                  = var.azs
  tags                 = merge(var.tags, module.common.common_tags)
}

#------------------------------------------------------------
# Security Group Module
#------------------------------------------------------------
module "security_group" {
  depends_on    = [module.common, module.vpc]
  source        = "../../modules/sg"
  name          = "${var.env}-sg"
  description   = "${var.env} security group"
  vpc_id        = module.vpc.vpc_id
  ingress_rules = var.ingress_rules
  egress_rules  = var.egress_rules
  tags          = merge(var.tags, module.common.common_tags)
}

#------------------------------------------------------------
# EC2 Module
#------------------------------------------------------------
module "ec2" {
  depends_on         = [module.common, module.vpc, module.security_group]
  source             = "../../modules/ec2"
  name               = var.env
  subnet_id          = module.vpc.public_subnets[0]
  security_group_ids = [module.security_group.sg_id]
  ami                = var.ami
  instance_type      = var.instance_type
  instance_count     = var.instance_count
  tags               = merge(var.tags, module.common.common_tags)
}
