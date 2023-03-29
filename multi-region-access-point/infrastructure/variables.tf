variable "aws_region" {
  type    = string
  default = "us-east-1"
}
variable "local_profile" {
  type        = string
  description = "Enter aws profile name. Better practice would be to define the profile in *.tfvars since it's hooked automatically there."

}