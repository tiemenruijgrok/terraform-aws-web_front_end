# Terraform block - minimum supported version and required providers, also supported client version

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=6.14.0"
    }
  }
}