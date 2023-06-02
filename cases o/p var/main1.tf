#main.tf

resource "aws_s3_bucket" "example" {
  bucket = "example-bucket"
  acl    = "public-read"
  website {
    index_document = "index.html"
  }
}

# The following output block will print the URL of static website deployed on S3 Bucket
output "website_url" {
  value = aws_s3_bucket.example.website_endpoint
} 
