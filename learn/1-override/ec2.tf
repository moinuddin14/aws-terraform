# can be useful in various scenarios, such as different configurations for different environments (like dev, staging, prod), testing, or hotfixes.

# Terraform automatically loads files that have names ending in _override.tf or _override.tf.json, and also any files specified in terraform.override.tf or terraform.override.tf.json

# say you have a main configuration for an EC2 instance (main.tf):
resource "aws_instance" "example" {
  ami           = "ami-0c94855ba95c574c8"
  instance_type = "t2.micro"
}