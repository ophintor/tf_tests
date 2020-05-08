resource "aws_s3_bucket" "s3b" {
  bucket = var.bucket_name
  acl    = "public-read"

  versioning {
    enabled = true
  }

  tags = {}
}

variable "aws_region" {}
variable "bucket_name" {}
provider "aws" {
    region = var.aws_region
}
