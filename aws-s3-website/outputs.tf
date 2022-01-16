output "cloudfront_domain" {
  value = aws_cloudfront_distribution.cf.*.domain_name
}

output "endpoint" {
  value = aws_route53_record.websiteurl.name
}