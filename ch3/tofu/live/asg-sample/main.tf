provider "aws" {
  region = "eu-west-2"
}

module "asg" {
  source = "github.com/brikis98/devops-book/ch3/tofu/modules/asg"
  name = "sample-app-asg"

  ami_id        = "ami-0eee3c8dfc2750508"
  user_data     = filebase64("${path.module}/user-data.sh")
  app_http_port = 8080

  instance_type    = "t2.micro"
  min_size         = 1
  max_size         = 10
  desired_capacity = 3

  instance_refresh = {
    min_healthy_percentage = 100
    max_healthy_percentage = 200
    auto_rollback          = true
  }

  target_group_arns = [module.alb.target_group_arn]
}

module "alb" {
  source = "github.com/brikis98/devops-book/ch3/tofu/modules/alb"
  name                  = "sample-app-alb"
  
  alb_http_port         = 80
  app_http_port         = 8080
  app_health_check_path = "/"
}