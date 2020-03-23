output "sentry_instance_dns" {
  value = aws_instance_public_dns
}

output "sentry_instance_ip" {
  value = aws_instance_public_ip
}

output "sentry_instance_id" {
  value = aws_instance_id
}
