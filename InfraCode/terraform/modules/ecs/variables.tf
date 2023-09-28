variable "cluster_name" {
  description = "Name of the ECS cluster"
  type        = string
}

variable "task_family" {
  description = "Name of the task definition family"
  type        = string
}

variable "task_cpu" {
  description = "CPU value for the task"
  type        = string
  default     = "512"
}

variable "task_memory" {
  description = "Memory value for the task"
  type        = string
  default     = "1024"
}

variable "execution_role_arn" {
  description = "ARN of the execution role for the ECS task"
  type        = string
}

variable "task_role_arn" {
  description = "ARN of the task role for the ECS task"
  type        = string
}

variable "container_definitions" {
  description = "The container definitions as a single, escaped JSON string"
  type        = string
}


variable "service_name" {
  description = "Name of the ECS service"
  type        = string
}

variable "subnets" {
  description = "List of subnet IDs for the ECS service"
  type        = list(string)
}

variable "security_group" {
  description = "Security group for the ECS service"
  type        = string
}
