resource "aws_lb" "this" {
  name               = var.lb_name
  internal           = true
  load_balancer_type = "network"
  security_groups    = [var.security_group]
  subnets            = var.subnets
}

resource "aws_lb_listener" "front_end" {
  load_balancer_arn = aws_lb.this.arn
  port              = "80"
  protocol          = "TCP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.front_end.arn
  }
}

resource "aws_lb_target_group" "front_end" {
  name     = var.target_group_name
  port     = 80
  protocol = "TCP"
  vpc_id   = var.vpc_id

  health_check {
    enabled             = true
    interval            = 30         # Time between health checks
    path                = "/swagger" # URL path to check (adjust as needed)
    port                = "traffic-port"
    protocol            = "HTTP"
    timeout             = 5 # Timeout for each check
    healthy_threshold   = 3 # Number of consecutive successful checks to consider the target healthy
    unhealthy_threshold = 3 # Number of consecutive failed checks to consider the target unhealthy
    matcher             = "200"
  }
}
