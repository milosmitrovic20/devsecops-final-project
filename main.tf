provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAIOSFODNN7EXAMPLEALAZNIKLJUCOVDE123"
  secret_key = "wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY"
}

resource "aws_s3_bucket" "ranjivi_bucket" {
  bucket = "moj-potpuno-otvoreni-seminarski-bucket"
}

resource "aws_s3_bucket_public_access_block" "los_bezbednosni_profil" {
  bucket = aws_s3_bucket.ranjivi_bucket.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}