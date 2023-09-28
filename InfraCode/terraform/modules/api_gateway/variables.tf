variable "api_name" {
  description = "The name of the API Gateway"
  type        = string
}

variable "api_description" {
  description = "A brief description of the API Gateway"
  type        = string
  default     = ""
}

variable "resource_path" {
  description = "Path segment for the API's URL, e.g., 'products' for /products endpoint"
  type        = string
}

variable "http_method" {
  description = "HTTP method for the API Gateway resource"
  type        = string
  default     = "GET"
}

variable "authorization" {
  description = "Type of authorization for the API Gateway method"
  type        = string
  default     = "NONE"
}

variable "vpc_link_name" {
  description = "Name for the VPC link to be created for the API Gateway"
  type        = string
}

variable "vpc_link_description" {
  description = "Description for the VPC link"
  type        = string
  default     = ""
}

variable "lb_arn" {
  description = "ARN of the load balancer for the VPC link"
  type        = string
}

variable "integration_http_method" {
  description = "HTTP method for the API Gateway integration"
  type        = string
  default     = "GET"
}

variable "lb_uri" {
  description = "URI of the load balancer for the API Gateway integration"
  type        = string
}
