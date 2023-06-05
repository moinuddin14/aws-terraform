# Define multiple provider configurations using aliases
provider "aws" {
  region = "us-east-1"
}

provider "aws" {
  alias  = "west"
  region = "us-west-2"
}

resource "aws_instance" "example_east" {
  # This uses the default provider
  ami           = "ami-0c94855ba95c574c8"
  instance_type = "t2.micro"
}

resource "aws_instance" "example_west" {
  # This uses the provider with the "west" alias
  provider      = aws.west
  ami           = "ami-0c94855ba95c574c8"
  instance_type = "t2.micro"
}

# If you're using a module and want to specify the provider, you can pass it as a module argument
module "example_module" {
  source = "./modules/example_module"

  providers = {
    aws = aws.west
  }
}