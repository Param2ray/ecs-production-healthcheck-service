variable "alb_dns" {
  description = "DNS name of the ALB"
  type        = string
}

variable "zone_id" {
  description = "Cloudflare Hosted Zone ID"
  type        = string
}

variable "subdomain" {
  description = "Subdomain to create DNS record for"
  type        = string
}

variable "record_type" {
  type    = string
  default = "CNAME"
} 