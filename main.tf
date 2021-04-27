provider "aws" {
  region = var.region
  # access_key = var.access_key
  # secret_access_key = var.secret_access_key
}

resource "aws_s3_bucket" "feedback-mechanism-handler-bucket" {
  bucket = "feedback-mechanism-handler-bucket"
  #bucket_prefix = var.bucket_prefix
  acl    = var.acl
  versioning {
          enabled = var.versioning
      }
  tags = var.tags
}