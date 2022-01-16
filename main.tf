# module "mywebsite" {
#   source      = "./aws-s3-website"
#   endpoint    = "mywebsite.calvineotieno.com"
#   domain_name = "calvineotieno.com"
#   region      = var.region
#   bucket_name = "mywebsite.calvineotieno.com"
# }

module "mywebsite" {
  source      = "./aws-s3-website"
  endpoint    = var.endpoint
  domain_name = var.domain_name
  region      = var.region
  bucket_name = var.bucket_name
}