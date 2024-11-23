terraform {
  backend "s3" {
    bucket = "sctp-ce7-tfstate"
    key    = "ecs-cicd-lovell.tfstate"
    region = "us-east-1"
  }
}