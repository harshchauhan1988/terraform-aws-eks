terraform {
  required_version = ">= 0.12.2"
  backend "s3" {
    bucket = "exium-terraform"
    # key    = ${var.tfstate_path}
    # region = "ap-south-1"
  }
}

provider "aws" {
  version = ">= 2.28.1"
  region  = var.region
}

provider "random" {
  version = "~> 2.1"
}

provider "local" {
  version = "~> 1.2"
}

provider "null" {
  version = "~> 2.1"
}

provider "template" {
  version = "~> 2.1"
}
