terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.27.0" # Please check the latest version at the time you're implementing this
    }
  }
}

provider "aws" {
  region = var.region

  access_key = var.access_key # Optional: Not recommended to hardcode this in your configuration

  secret_key = var.secret_key # Optional: Not recommended to hardcode this in your configuration

  token = var.token # Optional: For when you have a session token available

  assume_role { # Optional: For when you want to assume an IAM role
    role_arn     = var.role_arn # The ARN of the IAM role to assume
    session_name = var.session_name # An identifier for the assumed session
    external_id  = var.external_id # A unique identifier that is used by third parties to assume a role in their customers' accounts
  }
}