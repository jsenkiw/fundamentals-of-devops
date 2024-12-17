terraform {
  backend "s3" {
    bucket         = "john.senkiw-fundamentals-of-devops-tofu-state" 
    key            = "ch5/tofu/live/lambda-sample"       
    region         = "eu-west-2"
    encrypt        = true
    dynamodb_table = "john.senkiw-fundamentals-of-devops-tofu-state" 
  }
}
