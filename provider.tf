terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
    aviatrix = {
      source  = "AviatrixSystems/aviatrix"
      version = "3.0.1"
    }
  }

  required_version = ">= 1.2.0"
}
provider "aviatrix" {
  controller_ip = "18.177.6.107"
  username      = "admin"
  password      = "Aviatrix@123"
}
provider "aws" {
  region = "us-west-1"
}