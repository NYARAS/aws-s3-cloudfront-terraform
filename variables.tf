variable "region" {
  description = "AWS region"
  type        = string
  default     = "eu-west-1"
}

variable "bucket_name" {
  description = "S3 bucket name"
  type        = string
}

variable "endpoint" {
  description = "Endpoint url"
  type        = string
}

variable "domain_name" {
  description = "Domain name"
  type        = string
}