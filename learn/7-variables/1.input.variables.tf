# Variable definition precedence Environment variables > terraform.tfvars > terraform.tfvars.json > *.auto.tfvars/*.auto.tfvars.json > -var/-var-file

variable "string_var" {
  type        = string
  default     = "default_value"
  description = "A string variable"
}

variable "number_var" {
  type        = number
  default     = 10
  description = "A number variable"
}

variable "bool_var" {
  type        = bool
  default     = false
  description = "A boolean variable"
}

variable "list_var" {
  type        = list(string)
  default     = ["value1", "value2"]
  description = "A list variable"
}

variable "map_var" {
  type        = map(string)
  default     = { key1 = "value1", key2 = "value2" }
  description = "A map variable"
}

variable "object_var" {
  type = object({
    name = string
    age  = number
  })
  default     = { name = "John", age = 30 }
  description = "An object variable"
}

# The sensitive argument, which marks a variable as sensitive. Sensitive variable values are redacted from the console output when Terraform runs to protect sensitive data.
variable "sensitive_var" {
  type        = string
  default     = "secret"
  description = "A sensitive variable"
  sensitive   = true
}

# The nullable argument, which allows a variable to be set to null.
variable "nullable_var" {
  type        = string
  default     = null
  description = "A nullable variable"
  nullable    = true
}

variable "validated_var" {
  type        = string
  default     = "value"
  description = "A validated variable"

  validation {
    condition     = length(var.validated_var) > 4
    error_message = "The validated_var value must be more than 4 characters."
  }
}
