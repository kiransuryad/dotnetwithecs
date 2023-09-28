variable "aws_region" {
  description = "The AWS region"
  type        = string
  default     = "us-east-1" # Modify if using a different region
}

variable "vpc_id" {
  description = "ID of the VPC where endpoints should be created"
  type        = string
}

variable "private_subnet_ids" {
  description = "List of private subnet IDs where the endpoints should be associated"
  type        = list(string)
}

variable "ecs_task_security_group_id" {
  description = "Security group ID of the ECS task"
  type        = string
}

variable "endpoint_security_group_id" {
  description = "Security group ID for the VPC Endpoints"
  type        = string
}
