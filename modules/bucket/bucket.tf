resource "aws_s3_bucket" "simplebucket" {
  bucket = "my-tf-simple-bucket"

  tags = {
    Name        = "Simple Bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "simpleacl" {
  bucket = aws_s3_bucket.simplebucket.id
  acl    = "private"
}