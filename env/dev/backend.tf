terraform {
  backend "s3" {
    key    = "dev/dev.tfstate"
    bucket = "nikunj-dev-terraform"
    region = "us-east-1"
  }
}

