module "vpc" {
  source = "./modules/vpc"

  name        = "focal-vpc"
  vpc_cidr    = var.cidr_block
  environment = var.environment
}

module "alb" {
  source = "./modules/alb"

  public_subnet_ids = module.vpc.my_public_subnets
  vpc_id            = module.vpc.vpc_id
  focal_instance    = module.focal_instance.instance_id
  alb_sg_name       = "my-focalboard-instance"
}

module "focal_instance" {
  source = "./modules/focal_instance"

  ami_id        = var.my-amiid
  instance_type = var.my-instance_type
  key_name      = var.my-keyname
  vpc_id        = module.vpc.vpc_id
  subnet_ids    = module.vpc.my_public_subnets
  name          = var.name
}