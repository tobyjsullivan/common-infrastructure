provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "tf_states" {
  bucket = "terraform-states.tobyjsullivan.com"
  region = "us-east-1"
  acl = "private"

  tags = {
    name = "Terraform States"
  }

  versioning {
    enabled = true
  }
}

