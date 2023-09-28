variable "lb_name" {
  description = "Name of the load balancer"
  type        = string
}

variable "security_group" {
  description = "Security group for the load balancer"
  type        = string
}

variable "subnets" {
  description = "List of subnet IDs for the load balancer"
  type        = list(string)
}

variable "vpc_id" {
  description = "VPC ID for the target group"
  type        = string
}

variable "target_group_name" {
  description = "Name for the target group"
  type        = string
}
