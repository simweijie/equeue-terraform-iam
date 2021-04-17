terraform {
  backend "s3" {
    bucket = "nus-iss-equeue-terraform"
    key    = "iam/tfstate"
    region = "us-east-1"
  }
}