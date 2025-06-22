module "instance" {
  source     = "github.com/GoogleCloudPlatform/cloud-foundation-fabric//modules/compute-vm"
  project_id = var.project_id
  zone       = var.zone[1]
  name       = "ubuntu"
  network_interfaces = [{
    network    = module.vpc.network.self_link
    subnetwork = module.vpc.subnets["us-central1/development"].self_link
    nat = true

  }]
  boot_disk = {
    initialize_params = {
      image = "ubuntu-minimal-2210-kinetic-amd64-v20230126"
    }
  }
  attached_disks = [
    { size = 10 }
  ]
  metadata = { # instance metadata for ssh
    sshKeys = "ubuntu:${tls_private_key.ssh.public_key_openssh}"
  }

  # service_account = {
  #   email = module.iam-service-account.email
  # }
  tags = ["ubuntu"]
}