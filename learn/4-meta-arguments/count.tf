provider "aws" {
#   access_key = "<YOUR_ACCESS_KEY>"
#   secret_key = "<YOUR_SECRET_ACCESS_KEY>"
  region     = "us-west-2"
}

# count is used to create multiple resource instances according to a count.
resource "aws_instance" "example" {
  count = 2

  ami           = "ami-0c94855ba95c574c8"
  instance_type = "t2.micro"
}
