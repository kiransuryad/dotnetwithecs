output "lb_dns_name" {
  description = "The DNS name of the load balancer"
  value       = aws_lb.this.dns_name
}

output "lb_zone_id" {
  description = "The canonical hosted zone ID of the load balancer (to be used in Route 53)"
  value       = aws_lb.this.zone_id
}

output "lb_arn" {
  description = "The ARN of the Load Balancer"
  value       = aws_lb.this.arn
}
