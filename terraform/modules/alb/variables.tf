variable "name" {
  description = "ALB name"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "public_subnet_ids" {
  description = "Public subnet IDs for ALB"
  type        = list(string)
}


variable "http_listener_port" {
  description = "HTTP listener port"
  type        = number
  default     = 80
}

variable "https_listener_port" {
  description = "HTTPS listener port"
  type        = number
  default     = 443
}

variable "container_port" {
  description = "Container port for ECS service"
  type        = number
  default     = 8080
}