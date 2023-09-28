module "ecs" {
  source = "../../modules/ecs"

  cluster_name          = "ci-cluster-04"
  task_family           = "ci-task-family-04"
  execution_role_arn    = var.ecs_execution_role_arn
  task_role_arn         = var.ecs_task_role_arn
  container_definitions = var.container_definitions
  service_name          = "ci-service-04"
  subnets               = var.subnets
  security_group        = var.ecs_security_group
}

module "alb" {
  source = "../../modules/alb"

  lb_name           = "ci-lb"
  security_group    = var.alb_security_group
  subnets           = var.subnets
  vpc_id            = var.vpc_id
  target_group_name = "ci-target-group"

}

module "vpc_endpoints" {
  source = "../../modules/vpc_endpoints"

  vpc_id                     = var.vpc_id
  private_subnet_ids         = var.subnets
  ecs_task_security_group_id = var.ecs_security_group
  endpoint_security_group_id = module.vpc_endpoints.endpoint_security_group_id
}

resource "aws_cloudwatch_log_group" "ecs_logs" {
  name = "ecs-task-logs"
}


/* module "api_gateway" {
  source               = "../../modules/api_gateway"
  api_name             = "ci-api"
  api_description      = "CI API Gateway"
  resource_path        = "resource-path-for-ci"
  vpc_link_name        = "ci-vpc-link"
  vpc_link_description = "VPC Link for CI API Gateway"
  lb_arn               = module.alb.lb_arn
  lb_uri               = "http://${module.alb.lb_dns_name}/path"
} */
