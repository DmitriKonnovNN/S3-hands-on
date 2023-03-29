resource "aws_s3_bucket" "multi_reg_buckets" {
  for_each = toset(var.bucket_regions)
  bucket   = "multi-reg-bucket-${each.value}-${var.random_bucket_prefix}"

  tags = {
    CreatedBy     = "terraform"
    TargertRegion = each.value
    Environment   = "Test"
    Owner         = "DVK"
  }
}


