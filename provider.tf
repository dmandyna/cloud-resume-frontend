terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = ">= 3.57.0"
    }
    null = {
      source = "hashicorp/null"
      version = "3.1.0"
    }
  }

  backend "s3" {
    bucket = "dmandyna-tf-backend-eu-west-1"
    key    = "projects/cloud-resume/backend.tf"
    region = "eu-west-1"
  }
}

provider "aws" {
  region = "eu-west-1"
  default_tags {
    tags = {
      managed_by = "terraform"
      project = "CloudResume"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  alias = "nv"
}
