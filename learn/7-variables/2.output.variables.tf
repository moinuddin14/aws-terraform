# Declaring an Output Value
output "instance_id" {
  value = aws_instance.example.id
  description = "The ID of the created instance"
}

# Accessing Child Module Outputs
output "module_output" {
  value = module.example_module.output_value
  description = "The output value from the example_module"
}

# Custom Condition Checks
output "conditional_output" {
  value = var.input_variable > 10 ? "greater than 10" : "not greater than 10"
  description = "A value based on a condition check"
}

# Optional Arguments (description, sensitive, and depends_on)
output "sensitive_output" {
  value       = aws_instance.example.private_key
  description = "The private key of the created instance"
  sensitive   = true
  depends_on  = [aws_instance.example]
}
