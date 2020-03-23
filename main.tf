
module "sentry_setup" {
  source = "./modules"

  tags = {
    name             = var.name
    project_name     = var.project_name
    environment_name = var.environment_name
    terraform        = var.terraform
  }
}
