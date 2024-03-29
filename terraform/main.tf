terraform {
  backend "s3" {
    bucket = "gildraen-tfstates"
    key    = "admin/global.tfstate"
    region = "eu-west-3"
    profile = "gildraen-lab"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.8.0"
    }
  }
  required_version = "~> 1.6.2"
}

provider "aws" {
  profile = "gildraen-lab"
}
