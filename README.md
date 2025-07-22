# eks-terraform
go-to reusable EKS foundation module

# Terraform EKS Bootstrap Module

This repo provides a reusable module to bootstrap Amazon EKS clusters using Terraform and the `terraform-aws-modules/eks` module.

## Features

- Creates EKS cluster and node groups
- Outputs kubeconfig
- Supports IRSA (IAM Roles for Service Accounts)
- Easily extensible for logging, autoscaling, etc.

## Usage

```hcl
module "eks" {
  source       = "../../modules/eks"
  cluster_name = "dev-eks"
  vpc_id       = "vpc-abc123"
  subnet_ids   = ["subnet-1", "subnet-2"]
  ssh_key_name = "my-key"
}
