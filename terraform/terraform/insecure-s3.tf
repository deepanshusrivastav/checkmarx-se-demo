resource "aws_s3_bucket" "demo_bucket" {
  bucket = "checkmarx-demo-public-bucket"

  acl = "public-read"
}

resource "aws_s3_bucket_public_access_block" "demo" {
  bucket = aws_s3_bucket.demo_bucket.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}