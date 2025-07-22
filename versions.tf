terraform {
  required_version = ">= 1.3.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0.0"
    }
  }

  backend "s3" {
    bucket = "my-eks-tfstate"
    key    = "dev/eks/terraform.tfstate"
    region = "eu-west-1"
  }
}
