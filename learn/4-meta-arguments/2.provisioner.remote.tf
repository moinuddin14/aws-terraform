
# Configure the AWS provider
provider "aws" {
  profile = "default"
  region  = "us-west-2"
}

# Define a key pair resource
resource "aws_key_pair" "example" {
  key_name   = "examplekey"
  public_key = file("~/.ssh/terraform.pub")
}

# Define an AWS instance resource
# In this example, remote-exec provisioner is used to run commands on the remote instance. The commands are installing and starting an nginx server
resource "aws_instance" "example" {
  key_name      = aws_key_pair.example.key_name
  ami           = "ami-04590e7389a6e577c"
  instance_type = "t2.micro"

  # Define the connection details for the instance
  connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = file("~/.ssh/terraform")
    host        = self.public_ip
  }

  # Define the remote-exec provisioner
  provisioner "remote-exec" {
    inline = [
      "sudo amazon-linux-extras enable nginx1.12",
      "sudo yum -y install nginx",
      "sudo systemctl start nginx"
    ]
  }
}
