variable "cidr_block" {
  description = "CIDR block for the VPC"
  default     = "172.31.0.0/16"
}

variable "private_subnet_1_cidr" {
  description = "CIDR block for private subnet 1"
  default     = "172.31.0.0/24"
}

variable "private_subnet_2_cidr" {
  description = "CIDR block for private subnet 2"
  default     = "172.31.1.0/24"
}

variable "vpc_name" {
  description = "Name tag for the VPC"
  default     = "prod-vpc"
}

variable "ecs_sg_name" {
  description = "Name for the ECS security group"
  default     = "prod-ecs-sg"
}

variable "alb_sg_name" {
  description = "Name for the ALB security group"
  default     = "prod-alb-sg"
}
