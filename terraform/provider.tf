terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws" #other providers: Google Cloud, azure, etc. Possible to add multiple providers in 1 go
      version = "~> 5.0"
    }
  }
}


provider "aws" {
  region = "us-east-1" # Update accordingly
}