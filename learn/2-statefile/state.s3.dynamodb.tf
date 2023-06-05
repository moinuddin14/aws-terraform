# Example for storing the Terraform state file in AWS S3 and using DynamoDB for state locking 

terraform {
  backend "s3" {
    bucket         = "my-terraform-state"  # replace with your bucket name
    key            = "terraform.tfstate"
    region         = "us-west-2"  # replace with your AWS region
    dynamodb_table = "my-terraform-lock"  # replace with your DynamoDB table name
    encrypt        = true
  }
}

# say you have a main configuration for an EC2 instance (main.tf):
resource "aws_instance" "example" {
  ami           = "ami-0c94855ba95c574c8"
  instance_type = "t2.micro"
}