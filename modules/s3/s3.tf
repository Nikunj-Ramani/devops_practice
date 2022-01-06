# Terraform configuration

resource "aws_s3_bucket" "this" {
  bucket = var.bucket_name
  acl    = var.bucket_acl
  
  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "PublicReadGetObject",
            "Effect": "Allow",
            "Principal": "*",
            "Action": [
                "s3:GetObject"
            ],
            "Resource": [
                "arn:aws:s3:::${var.bucket_name}/*"
            ]
        }
    ]
}
EOF
/*
  website {
    index_document = "www/index.html"
    error_document = "www/error.html"
  }
*/
  tags = var.tags
}
