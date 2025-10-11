		resource "aws_s3_bucket" "WebAppBucket" {
			bucket_prefix = var.bucket_name
			force_destroy = true
				}
					
		resource "aws_s3_bucket_versioning" "bucket_versioning" {
			bucket = aws_s3_bucket.WebAppBucket.id
			versioning_configuration {
			status = "Enabled"
				}
				}
					
		resource "aws_s3_bucket_server_side_encryption_configuration" "bucket_crypto_conf" {
			bucket = aws_s3_bucket.WebAppBucket.bucket
				rule {
				apply_server_side_encryption_by_default {
				sse_algorithm = "AES256"
						}
					}
}
