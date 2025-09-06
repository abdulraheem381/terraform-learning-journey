output "bucket_name_expression" {
  description = "S3 bucket created using expression"
  value       = aws_s3_bucket.example.bucket
}

output "bucket_name_function" {
  description = "S3 bucket created using functions"
  value       = aws_s3_bucket.with_function.bucket
}
