module "vpc" {
  source     = "github.com/GoogleCloudPlatform/cloud-foundation-fabric//modules/net-vpc"
  project_id = "omega-rhino-408517"
  name       = "shlomo-my-network"
  subnets = [
    {
      ip_cidr_range = "10.0.0.0/24"
      name          = "development"
      region        = var.gcp_region
    },
    {
      ip_cidr_range = "10.1.0.0/24"
      name          = "test"
      region        = var.gcp_region
      enable_private_access = false
    }
  ]
}