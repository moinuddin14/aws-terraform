provider "aws" {
#   access_key = "<YOUR_ACCESS_KEY>"
#   secret_key = "<YOUR_SECRET_ACCESS_KEY>"
  region     = "us-west-2"
}

variable "subnets" {
  description = "A map of subnet descriptions and CIDR blocks"
  default = {
    "subnet1" = "10.0.1.0/24"
    "subnet2" = "10.0.2.0/24"
  }
}

# for_each is used to create instances for each item in a map or a set of strings.
resource "aws_subnet" "example" {
  for_each = var.subnets

  vpc_id     = "vpc-abcde012"
  cidr_block = each.value
  tags = {
    Name = each.key
  }
}
