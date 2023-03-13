resource "aws_s3_bucket" "bucket" {
  bucket = "lml-labs-bucket-terraform"
}

resource "aws_s3_object" "obj" {
  bucket = aws_s3_bucket.bucket.id
  key    = "content_s3_object.json"
  source = "content_s3_object.json"
}
