resource "aws_s3_bucket" "s3b" {
  bucket = var.bucket_name
  acl    = "public-read"

  versioning {
    enabled = true
  }

  tags = {}
}