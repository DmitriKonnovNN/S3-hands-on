variable "aws_region" {
  type    = string
  default = "us-east-1"
}
variable "local_profile" {
  type        = string
  description = "Enter aws profile name. Better practice would be to define the profile in *.tfvars since it's hooked automatically there."

}

variable "random_bucket_prefix" {
  type        = number
  description = "add some random value so that your bucket has a globally unique name"
}

variable "bucket_regions" {
  type        = list(string)
  description = "enter regions to create a bucket in"
}