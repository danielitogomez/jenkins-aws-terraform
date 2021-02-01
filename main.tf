provider "aws" {
  region     = var.region
  profile    = "Development"
  access_key = "AKIARLOOBCZACJFMOOPR"
  secret_key = "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"
}
terraform {
  required_version = ">= 0.12.0"
}
