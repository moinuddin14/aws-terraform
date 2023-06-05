# The lifecycle block is used to manage the lifecycle of a resource, including creating, updating, and destroying it.

provider "aws" {
  access_key = "<YOUR_ACCESS_KEY>"
  secret_key = "<YOUR_SECRET_ACCESS_KEY>"
  region     = "us-west-2"
}

resource "aws_instance" "example" {
  ami           = "ami-0c94855ba95c574c8"
  instance_type = "t2.micro"

  # The lifecycle block is used to manage the lifecycle of the instance.
  lifecycle {
    # This setting ensures that the existing instance will only be destroyed after the new one is successfully created,
    # preventing any downtime during updates or changes to the instance.
    # All lifecycle options available are create_before_destroy, prevent_destroy, ignore_changes, ignore_changes_all, replace_triggered_by
    create_before_destroy = true
  }
}