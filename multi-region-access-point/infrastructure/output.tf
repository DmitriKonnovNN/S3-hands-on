output "bucket_ids" {
  value       = [aws_s3_bucket.multi_reg_buckets_ap-northeast-1.id, aws_s3_bucket.multi_reg_buckets_us-west-1.id]
  description = "ids multi-regional buckets"
  sensitive   = false
}