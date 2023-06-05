# Module source https://registry.terraform.io/modules/terraform-aws-modules/eks/aws/latest
provider "aws" {
  region = "us-west-2"
}

data "aws_availability_zones" "available" {}

module "eks" {
  source          = "terraform-aws-modules/eks/aws" # If locally developed module then give the path to the module example "../module/eks"
  cluster_name    = "my-eks-cluster"
  cluster_version = "1.24"
  subnets         = ["subnet-abcde012", "subnet-bcde012a", "subnet-fghi345a"]
  vpc_id          = "vpc-abcde012"

  node_groups = {
    eks_nodes = {
      desired_capacity = 2
      max_capacity     = 10
      min_capacity     = 1

      instance_type = "m5.large"
      key_name      = "my-key-name"

      additional_tags = {
        Environment = "test"
        Name        = "eks-worker-node"
      }
    }
  }
}

output "cluster_endpoint" {
  description = "Endpoint for EKS control plane."
  value       = module.eks.cluster_endpoint
}

output "cluster_security_group_id" {
  description = "Security group ID attached to the EKS cluster."
  value       = module.eks.cluster_security_group_id
}

output "cluster_iam_role_name" {
  description = "IAM role name associated with EKS cluster."
  value       = module.eks.cluster_iam_role_name
}

output "cluster_certificate_authority_data" {
  description = "Nested attribute containing certificate-authority-data for your cluster."
  value       = module.eks.cluster_certificate_authority_data
}