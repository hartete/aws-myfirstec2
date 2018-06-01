terraform {
  required_version = "~> 0.11.3"

  backend "s3" {
    bucket               = "nlb-int-test-tf-statefiles-us-west-2"
    workspace_key_prefix = "nlb-int-test-NLBCreation"
    key                  = "test/mft/nlb-test-NLBCreation.tfstate"
    region               = "us-east-1"
    encrypt              = "true"
    dynamodb_table       = "mydb-tfstate"
  }
}
