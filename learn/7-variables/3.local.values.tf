# A local value assigns a name to an expression, so you can use the name multiple times within a module instead of repeating the expression

# Local values can be helpful to avoid repeating the same values or expressions multiple times in a configuration, but use sparingly as overuse will make a configuration hard to read by future maintainers by hiding the actual values used

# Declaring a Local Value
locals {
  service_name = "forum"
  owner        = "Community Team"
}

locals {
  # Ids for multiple sets of EC2 instances, merged together
  instance_ids = concat(aws_instance.blue.*.id, aws_instance.green.*.id)
}

locals {
  # Common tags to be assigned to all resources
  common_tags = {
    Service = local.service_name
    Owner   = local.owner
  }
}

# Using Local Values
resource "aws_instance" "example" {
  ami           = "ami-0c94855ba95c574c8"
  instance_type = "t2.micro"
  tags = local.common_tags
}