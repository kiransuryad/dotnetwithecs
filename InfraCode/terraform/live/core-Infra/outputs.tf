output "vpc_id" {
  value       = module.vpc.vpc_id
  description = "The ID of the VPC"
}

output "private_subnet_1_id" {
  value       = module.vpc.private_subnet_1_id
  description = "The ID of the first private subnet"
}

output "private_subnet_2_id" {
  value       = module.vpc.private_subnet_2_id
  description = "The ID of the second private subnet"
}

output "ecs_security_group_id" {
  value       = module.vpc.ecs_security_group_id
  description = "The ID of the ECS security group"
}

output "alb_security_group_id" {
  value       = module.vpc.alb_security_group_id
  description = "The ID of the ALB security group"
}
