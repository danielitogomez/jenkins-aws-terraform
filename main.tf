provider "aws" {
  region     = var.region
  profile    = "Development"
  access_key = "AKIATVMFNBAG3NSX4FOQ"
  secret_key = "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"
}
terraform {
  required_version = ">= 0.12.0"
}
