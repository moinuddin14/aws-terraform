# And you want to change the instance type in a different environment without touching the main configuration. 
# You can create an override file (override.tf):
# When Terraform loads this configuration, the instance_type in the override file will take precedence, and a "t2.large" instance will be created instead of "t2.micro".

resource "aws_instance" "example" {
  instance_type = "t2.large"
}