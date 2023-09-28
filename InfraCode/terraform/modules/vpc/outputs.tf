output "vpc_id" {
  value = aws_vpc.main.id
}

output "private_subnet_1_id" {
  value = aws_subnet.private_subnet_1.id
}

output "private_subnet_2_id" {
  value = aws_subnet.private_subnet_2.id
}

output "ecs_security_group_id" {
  value = aws_security_group.ecs_sg.id
}

output "alb_security_group_id" {
  value = aws_security_group.alb_sg.id
}
