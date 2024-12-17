provider "aws" {
  region = "eu-west-2"
}

module "state" {
  source = "github.com/brikis98/devops-book//ch5/tofu/modules/state-bucket"

  name = "john.senkiw-fundamentals-of-devops-tofu-state"
}
