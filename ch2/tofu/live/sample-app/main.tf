provider "aws" {
  region = "eu-west-2"
}

module "sample_app_1" {
  source = "../../modules/ec2-instance"
  ami_id = "ami-0c43703e118591a8a"
  name = "sample-app-tofu-1"
}

module "sample_app_2" {
  source = "../../modules/ec2-instance"
  ami_id = "ami-0c43703e118591a8a"
  name = "sample-app-tofu-2"
}