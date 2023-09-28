module "vpc" {
  source = "../../modules/vpc"

  // adjust these values as needed
  cidr_block            = "172.31.0.0/16"
  private_subnet_1_cidr = "172.31.0.0/24"
  private_subnet_2_cidr = "172.31.1.0/24"
  vpc_name              = "prod-vpc"
  ecs_sg_name           = "prod-ecs-sg"
  alb_sg_name           = "prod-alb-sg"
}
