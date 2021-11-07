output "instance_id" {
  description = "ID of the SCW instance"
  value       = scaleway_instance_server.web.id
}

output "instance_public_ip" {
  description = "Public IP address of the SCW instance (enure ipv6 is enabled)"
  value       = scaleway_instance_server.web.ipv6_address
}

