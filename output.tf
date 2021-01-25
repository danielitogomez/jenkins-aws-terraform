
output "jenkins_ip_address" {
  value = aws_instance.jenkins-instance.public_ip
}

output "public_dns" {
  description = "Public DNS of instance (or DNS of EIP)"
  value       = aws_instance.jenkins-instance.public_dns
}

output "user_data" {
  value = data.template_file.init.rendered
}