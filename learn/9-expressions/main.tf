# condition ? true_val : false_val
variable "environment" {
  description = "Deployment environment"
  type        = string
}

resource "aws_instance" "example" {
  ami           = "ami-abc123"
  instance_type = var.environment == "prod" ? "m5.large" : "t2.micro"

  tags = {
    Name = "example-instance"
    Environment = var.environment
  }
}
