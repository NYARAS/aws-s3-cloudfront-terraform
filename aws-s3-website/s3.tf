resource "aws_s3_bucket" "website" {
  bucket        = var.bucket_name
  acl           = "private"
  force_destroy = true
  tags          = local.tags

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}

resource "aws_s3_bucket_public_access_block" "s3_bucket_block" {
  bucket                  = aws_s3_bucket.website.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_policy" "s3policy" {
  bucket = aws_s3_bucket.website.id
  policy = data.aws_iam_policy_document.s3policy.json
}
