terraform {
  required_version = ">= 1.4.3"
  required_providers {

    # Initialize the AWS provider
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.27"
    }

    # Initialize Cloudflare as a provider
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 5.0"
    }
  }
  # Initialize S3 bucket as backend
  backend "s3" {
    bucket = "ece-production-healthcheck-service"
    key    = "terraform.tfstate"
    region = "ca-central-1"
  }
}