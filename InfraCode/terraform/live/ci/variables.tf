variable "ecs_execution_role_arn" {
  description = "ARN of the execution role for the ECS task in CI environment"
  type        = string
}

variable "ecs_task_role_arn" {
  description = "ARN of the task role for the ECS task in CI environment"
  type        = string
}

variable "container_definitions" {
  description = "The container definitions as a single, escaped JSON string for CI environment"
  type        = string
}

variable "subnets" {
  description = "List of subnet IDs for the ECS service and ALB in CI environment"
  type        = list(string)
}

variable "ecs_security_group" {
  description = "Security group for the ECS service in CI environment"
  type        = string
}

variable "alb_security_group" {
  description = "Security group for the load balancer in CI environment"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID for the CI environment"
  type        = string
}
