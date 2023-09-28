output "ecr_api_endpoint_id" {
  description = "The ID of the ECR API VPC endpoint"
  value       = aws_vpc_endpoint.ecr_api.id
}

output "ecr_dkr_endpoint_id" {
  description = "The ID of the ECR DKR VPC endpoint"
  value       = aws_vpc_endpoint.ecr_dkr.id
}

output "s3_endpoint_id" {
  description = "The ID of the S3 VPC endpoint"
  value       = aws_vpc_endpoint.s3.id
}

output "endpoint_security_group_id" {
  description = "The ID of the VPC endpoint security group"
  value       = aws_security_group.endpoint_sg.id
}
