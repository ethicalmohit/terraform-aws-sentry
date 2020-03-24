
terraform {
  required_version = ">= 0.12"
}

provider "aws" {
  version = "~> 2.43.0"
  region  = "ap-south-1"
}

module "sentry_setup" {
  source              = "../"
  public_key_material = var.public_key_material
  instance_type       = "t2.large"

  tags = {
    name             = var.name
    project_name     = var.project_name
    environment_name = var.environment_name
    terraform        = var.terraform
  }
}
