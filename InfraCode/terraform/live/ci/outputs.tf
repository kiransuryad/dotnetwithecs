output "ecs_cluster_name" {
  description = "The name of the ECS cluster in CI environment"
  value       = module.ecs.ecs_cluster_name
}

output "ecs_task_definition_arn" {
  description = "The ARN of the ECS task definition in CI environment"
  value       = module.ecs.ecs_task_definition_arn
}

output "ecs_service_name" {
  description = "The name of the ECS service in CI environment"
  value       = module.ecs.ecs_service_name
}

output "lb_dns_name" {
  description = "The DNS name of the load balancer in CI environment"
  value       = module.alb.lb_dns_name
}

output "lb_zone_id" {
  description = "The canonical hosted zone ID of the load balancer in CI environment (for Route 53)"
  value       = module.alb.lb_zone_id
}

output "ecr_api_endpoint_id" {
  description = "The ID of the ECR API VPC endpoint in CI environment"
  value       = module.vpc_endpoints.ecr_api_endpoint_id
}

output "ecr_dkr_endpoint_id" {
  description = "The ID of the ECR DKR VPC endpoint in CI environment"
  value       = module.vpc_endpoints.ecr_dkr_endpoint_id
}

output "s3_endpoint_id" {
  description = "The ID of the S3 VPC endpoint in CI environment"
  value       = module.vpc_endpoints.s3_endpoint_id
}

output "endpoint_security_group_id" {
  description = "The ID of the VPC endpoint security group in CI environment"
  value       = module.vpc_endpoints.endpoint_security_group_id
}

