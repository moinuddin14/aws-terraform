# The lifecycle block is used to manage the lifecycle of a resource, including creating, updating, and destroying it.

provider "aws" {
  access_key = "<YOUR_ACCESS_KEY>"
  secret_key = "<YOUR_SECRET_ACCESS_KEY>"
  region     = "us-west-2"
}

variable "revision" {
  default = 1
}

resource "terraform_data" "replacement" {
  input = var.revision
}

# This resource has no convenient attribute which forces replacement,
# but can now be replaced by any change to the revision variable value.
resource "example_database" "test" {
  lifecycle {
    replace_triggered_by = [terraform_data.replacement]
  }
}