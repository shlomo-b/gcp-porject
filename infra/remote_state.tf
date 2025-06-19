terraform {
  backend "gcs" {
    bucket = "shlomo-bucket-dev-us"
    prefix = "terraform/state/terraform.tfstate"
  }
}
