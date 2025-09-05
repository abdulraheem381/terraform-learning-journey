output "bucket_name" {
  description = "The name of the created S3 bucket"
  value       = aws_s3_bucket.example.bucket
}

output "region" {
  description = "Region in which resources are created"
  value       = var.aws_region
}
