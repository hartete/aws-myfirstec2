# Configure the AWS Provider
provider "aws" {
  access_key = "AKIAI4QAY6X2BTQYOZ5Q"
  secret_key = "${var.aws_secret_key}"
  region     = "us-east-1"
}
