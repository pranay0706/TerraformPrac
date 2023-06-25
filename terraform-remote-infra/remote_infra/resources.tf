resource "aws_s3_bucket" "my_s3_bucket_1" {
  bucket = "remote-demo-bucket-180623"
}

resource "aws_dynamodb_table" "my_dynamodb_table_1" {
  name         = "remote-demo-dynamodb-table"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
}
