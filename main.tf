
# create aws provider
provider "aws" {
  region = "us-east-1"
  profile = "cyrax"
}

# store terraform state in S3 Bucket
terraform {
  backend "s3" {
    bucket = "trails-cyrax.terraform-remote-state"
    key    = "terraform.tfstate.dev"
    region = "us-east-1"
    profile = "cyrax"
  }
}


