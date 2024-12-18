provider "aws" {
  region = "eu-west-2"
}

module "oidc_provider" {
  source = "github.com/brikis98/devops-book//ch5/tofu/modules/github-aws-oidc"

  provider_url = "https://token.actions.githubusercontent.com" 
}

module "iam_roles" {
  source = "github.com/brikis98/devops-book//ch5/tofu/modules/gh-actions-iam-roles"
  name              = "lambda-sample"

  oidc_provider_arn = module.oidc_provider.oidc_provider_arn

  enable_iam_role_for_testing = true
  enable_iam_role_for_plan    = true
  enable_iam_role_for_apply   = true

  tofu_state_bucket         = "john.senkiw-fundamentals-of-devops-tofu-state"
  tofu_state_dynamodb_table = "john.senkiw-fundamentals-of-devops-tofu-state" 

  github_repo      = "jsenkiw/fundamentals-of-devops"
  lambda_base_name = "lambda-sample"
}
