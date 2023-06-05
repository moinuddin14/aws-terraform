# The lifecycle block is used to manage the lifecycle of a resource, including creating, updating, and destroying it.

provider "aws" {
  access_key = "<YOUR_ACCESS_KEY>"
  secret_key = "<YOUR_SECRET_ACCESS_KEY>"
  region     = "us-west-2"
}

# use precondition and postcondition blocks to specify assumptions and guarantees about how the resource operates
resource "aws_instance" "example" {
  instance_type = "t2.micro"
  ami           = "ami-abc123"

  lifecycle {
    # The AMI ID must refer to an AMI that contains an operating system
    # for the `x86_64` architecture.
    precondition {
      condition     = data.aws_ami.example.architecture == "x86_64"
      error_message = "The selected AMI must be for the x86_64 architecture."
    }
  }
}