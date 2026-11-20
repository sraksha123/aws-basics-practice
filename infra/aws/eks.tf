module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 21.30.0"

  name               = "${var.project_name}-eks"
  kubernetes_version = var.cluster_version

  endpoint_public_access                   = true
  enable_cluster_creator_admin_permissions = true

  vpc_id     = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnets

  eks_managed_node_groups = {
    default = {
      min_size       = 1
      max_size       = 3
      desired_size   = 2
      instance_types = [var.node_instance_type]
    }
  }
}
