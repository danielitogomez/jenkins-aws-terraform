provider "aws" {
  region     = var.region
  profile    = "Development"
  access_key = "AKIA47JIWO3OOEJ52JHJ"
  secret_key = "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"
}
terraform {
  required_version = ">= 0.12.0"
}
