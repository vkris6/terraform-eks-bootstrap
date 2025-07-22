provider "aws" {
  region = var.region
}

module "eks" {
  source       = "../../modules/eks"
  cluster_name = "dev-eks"
  k8s_version  = "1.29"
  vpc_id       = var.vpc_id
  subnet_ids   = var.subnet_ids
  ssh_key_name = "my-key"
  env          = "dev"
}

variable "region" {
  default = "eu-west-1"
}

variable "vpc_id" {
  default = "vpc-abc123"
}

variable "subnet_ids" {
  type = list(string)
  default = ["subnet-1", "subnet-2", "subnet-3"]
}
