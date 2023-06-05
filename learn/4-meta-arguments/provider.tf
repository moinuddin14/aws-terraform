# provider is used to specify a provider configuration. A provider is responsible for creating and managing resources.

provider "aws" {
#   access_key = "<YOUR_ACCESS_KEY>"
#   secret_key = "<YOUR_SECRET_ACCESS_KEY>"
  region     = "us-west-2"
}

# Here, AWS provider is being used to create an EC2 instance.
resource "aws_instance" "example" {
  ami           = "ami-0c94855ba95c574c8"
  instance_type = "t2.micro"
}