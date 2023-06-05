# Provisioners are used to execute scripts on a local or remote machine as part of resource creation or destruction

provider "aws" {
#   access_key = "<YOUR_ACCESS_KEY>"
#   secret_key = "<YOUR_SECRET_ACCESS_KEY>"
  region     = "us-west-2"
}

# Example of executing on local machine
resource "aws_instance" "example" {
  ami           = "ami-0c94855ba95c574c8"
  instance_type = "t2.micro"

  provisioner "local-exec" {
    command = "echo 'A new instance was created!'"
  }
}

