provider "aws" {
  region     = var.region
  profile    = "Development"
  access_key = "AKIAY3I43SR6CEW2SYSB"
  secret_key = "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"
}
terraform {
  required_version = ">= 0.12.0"
}
