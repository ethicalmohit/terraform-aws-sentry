output "sentry_instance_dns" {
  value = module.sentry_setup.aws_instance_public_dns
}

output "sentry_instance_ip" {
  value = module.sentry_setup.aws_instance_public_ip
}

output "sentry_instance_id" {
  value = module.sentry_setup.aws_instance_id
}
