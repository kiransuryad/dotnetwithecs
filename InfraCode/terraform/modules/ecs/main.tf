resource "aws_ecs_cluster" "this" {
  name = var.cluster_name
}

resource "aws_ecs_task_definition" "this" {
  family                   = var.task_family
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  cpu                      = var.task_cpu
  memory                   = var.task_memory
  execution_role_arn       = var.execution_role_arn
  task_role_arn            = var.task_role_arn

  container_definitions = var.container_definitions
}

resource "aws_ecs_service" "this" {
  name             = var.service_name
  cluster          = aws_ecs_cluster.this.id
  task_definition  = aws_ecs_task_definition.this.arn
  desired_count    = 2
  launch_type      = "FARGATE"
  platform_version = "1.4.0"

  network_configuration {
    subnets         = var.subnets
    security_groups = [var.security_group]
  }
}
