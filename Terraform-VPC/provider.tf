terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.35.0"
    }
  }

  backend "s3" {
     bucket = "terraform-githubaction"
     key    = "dev/terraform.tfstate"
     region = "us-east-1"
     #access_key = "AKIATCKANCDPX2PSNFWR"
     #secret_key = "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"
     
  }
}

provider "aws" {
  region = "us-east-1"
}