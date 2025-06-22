output "gcp_account_used" {
  value = data.google_client_openid_userinfo.user.email
}

output "instance_ip" {
  value = module.instance.external_ip
}
