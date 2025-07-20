provider "aws" {
    region = "us-east-1"
}

module "vpc" {
  source = "./modules/VPC"
  
}

module "keypairs" {
  source = "./modules/Keypairs"
   
}

module "sg" {
  source = "./modules/SG"
  vpc_id = module.vpc.vpc_id  
}

module "ec2" {
  source = "./modules/ec2"
  key_name = module.keypairs.key_pair_name
  subnet_id = module.vpc.public_subnet_ids[0]
  security_group_ids = [module.sg.sg_id]
  create = true
  }


