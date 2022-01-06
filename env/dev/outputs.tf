# Output variable definitions

output "s3_bucket_arn" {
  description = "ARN of the bucket"
  value       = module.s3_bucket.arn
}

output "s3_bucket_name" {
  description = "Name (id) of the bucket"
  value       = module.s3_bucket.name
}
