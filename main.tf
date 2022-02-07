module "mywebsite" {
  source      = "./aws-s3-website"
  endpoint    = var.endpoint
  domain_name = var.domain_name
  region      = var.region
  bucket_name = var.bucket_name
}