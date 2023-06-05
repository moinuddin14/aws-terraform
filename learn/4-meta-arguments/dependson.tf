provider "aws" {
#   access_key = "<YOUR_ACCESS_KEY>"
#   secret_key = "<YOUR_SECRET_ACCESS_KEY>"
  region     = "us-west-2"
}

resource "aws_s3_bucket" "bucket" {
  bucket = "terraform-example-bucket"
  acl    = "private"
}

resource "aws_s3_bucket_object" "object" {
  bucket = aws_s3_bucket.bucket.bucket
  key    = "someobject"
  source = "somefile.txt"
  acl    = "private"

  depends_on = [aws_s3_bucket.bucket]
}
