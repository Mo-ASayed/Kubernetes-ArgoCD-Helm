module "eks" {
  source                               = "terraform-aws-modules/eks/aws"
  cluster_name                         = local.name
  version                              = "19.0.1"
  cluster_version                      = "1.31"
  cluster_endpoint_public_access       = true
  cluster_endpoint_public_access_cidrs = ["0.0.0.0/0"]
  enable_irsa                          = true
  vpc_id                               = module.vpc.vpc_id
  subnet_ids                           = module.vpc.private_subnets
  control_plane_subnet_ids             = module.vpc.public_subnets

  eks_managed_node_group_defaults = {
    disk_size      = 50
    instance_types = ["t2.medium", "t2.large"]
  }

  eks_managed_node_groups = {
    default = {}
  }

  tags = local.tags

}