terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"

  backend "remote" {
	  organization = "provisioning-infra-aws"
	  workspaces {
			name = "aws-infra-tfe"
		}
	}
}

provider "aws" {
  region  = "ap-southeast-1"
}
