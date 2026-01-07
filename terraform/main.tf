module "ecs" {
  source = "./modules/ecs"

  cluster_name          = var.cluster_name
  ecs_launch_type       = var.ecs_launch_type
  desired_count         = var.desired_count
  container_port        = var.container_port
  cpu                   = var.cpu
  memory                = var.memory
  vpc_id                = module.vpc.vpc_id
  image_url             = var.image_url
  http_listener_arn     = module.alb.http_listener_arn
  https_listener_arn    = module.alb.https_listener_arn
  iam_role_arn          = module.iam.iam_role_arn
  private_subnet_ids    = module.vpc.private_subnet_ids
  target_group_arn      = module.alb.target_group_arn
  alb_security_group_id = module.alb.alb_security_group_id

}

module "vpc" {
  source = "./modules/vpc"

  name                 = var.project_name
  vpc_cidr             = var.vpc_cidr
  az_count             = var.az_count
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs

}
