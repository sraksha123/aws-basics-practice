terraform {
  backend "s3" {
    bucket       = "CHANGE-ME-terraform-state-bucket"
    key          = "devops-pipeline/eks/terraform.tfstate"
    region       = "ap-south-1"
    use_lockfile = true
    encrypt      = true
  }
}

