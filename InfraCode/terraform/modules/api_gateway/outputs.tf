output "api_url" {
  description = "The URL of the API Gateway"
  value       = aws_api_gateway_deployment.api_deployment.invoke_url
}

output "api_id" {
  description = "The ID of the API Gateway"
  value       = aws_api_gateway_rest_api.api.id
}

output "vpc_link_id" {
  description = "The ID of the VPC link for the API Gateway"
  value       = aws_api_gateway_vpc_link.vpc_link.id
}
