output "gcp_account_used" {
  value = data.google_client_openid_userinfo.user.email
}

output "vpc" {
  value = module.vpc
}

# output "instance_ip" {
#   value = module.instance.network_interfaces.0.nat
  
# }