variable "public_cidrs" {
  description = "CIDR blocks for public subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "private_cidrs" {
  description = "CIDR blocks for private subnets"
  type        = list(string)
  default     = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
}

variable "region" {
  description = "The region where AWS operations will take place. Examples are us-east-1, us-west-2, etc."
  type        = string
  default     = "us-west-2"
}

variable "access_key" {
  description = "AWS access key"
  type        = string
  default     = "" # Replace with your access key or leave blank if using environment variables or other authentication methods
}

variable "secret_key" {
  description = "AWS secret key"
  type        = string
  default     = "" # Replace with your secret key or leave blank if using environment variables or other authentication methods
}

variable "token" {
  description = "AWS session token"
  type        = string
  default     = "" # Replace with your session token or leave blank if not using session tokens
}

variable "role_arn" {
  description = "The ARN of the IAM role to assume"
  type        = string
  default     = "" # Replace with the ARN of the IAM role to assume or leave blank if not assuming any role
}

variable "session_name" {
  description = "An identifier for the assumed session"
  type        = string
  default     = "" # Replace with a session name or leave blank if not assuming any role
}

variable "external_id" {
  description = "A unique identifier that is used by third parties to assume a role in their customers' accounts"
  type        = string
  default     = "" # Replace with an external ID or leave blank if not assuming any role
}
