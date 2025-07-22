module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = var.cluster_name
  cluster_version = var.k8s_version
  subnets         = var.subnet_ids
  vpc_id          = var.vpc_id

  enable_irsa = true

  node_groups = {
    default = {
      desired_capacity = 2
      max_capacity     = 3
      min_capacity     = 1

      instance_types = ["t3.medium"]
      key_name       = var.ssh_key_name
    }
  }

  tags = {
    Environment = var.env
    Terraform   = "true"
  }
}
