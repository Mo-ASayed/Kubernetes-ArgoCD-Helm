locals {
  name   = "eks-lab"
  # domain = "lab.mohammedsayed.com"  # Declared but not used currently so commenting until a use case is established
  region = "us-east-1"

  tags = {
    Environment = "sandbox"
    Project     = "EKS Advanced Lab"
    Owner       = "Mo"
  }
}