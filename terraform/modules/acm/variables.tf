variable "domain_name" {
  description = "Domain name for ACM certificate"
  type        = string
}

variable "zone_id" {
  description = "Cloudflare Hosted Zone ID"
  type        = string
}

variable "subdomain" {
  description = "Subdomain for ACM certificate"
  type        = string
}