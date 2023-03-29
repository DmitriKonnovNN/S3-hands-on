resource "aws_s3_bucket" "multi_reg_buckets_us-west-1" {
  bucket   = "multi-reg-bucket-${var.bucket_regions[0]}-${var.random_bucket_prefix}"
  provider = aws.us-west-1
  tags = {
    CreatedBy     = "terraform"
    TargertRegion = var.bucket_regions[0]
    Environment   = "Test"
    Owner         = "DVK"
  }
}

resource "aws_s3_bucket" "multi_reg_buckets_ap-northeast-1" {
  bucket   = "multi-reg-bucket-${var.bucket_regions[1]}-${var.random_bucket_prefix}"
  provider = aws.ap-northeast-1
  tags = {
    CreatedBy     = "terraform"
    TargertRegion = var.bucket_regions[1]
    Environment   = "Test"
    Owner         = "DVK"
  }
}



resource "aws_s3control_multi_region_access_point" "m_r_access_point" {
  details {
    name = var.access_point_name
    dynamic "region" {
      for_each = toset([aws_s3_bucket.multi_reg_buckets_ap-northeast-1.id, aws_s3_bucket.multi_reg_buckets_us-west-1.id])
      content {
        bucket = region.value
      }
    }
  }

}