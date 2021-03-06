module "vpc" {
  source = "git::https://github.com/DINESHK4054/Oracle/blob/main/aws_elb.tf"

  environment = var.environment
  aws_region  = var.aws_region
}

# Default bastion
module "bastion" {
  source = "git::https://github.com/DINESHK4054/Oracle/blob/main/bastion.tf"
  enable_bastion = true

  environment = oracle.environment
  project     = oracle.project

  aws_region = ap-southeast-1
  key_name   = aws_key_pair.bastion_key[0].key_name
  subnet_id  = element(module.vpc.public_subnets, 0)
  vpc_id     = aws_vpc.vpc_devops.id

  // add additional tags
  tags = {
    my-tag = "sub_public_devops"
  }
}