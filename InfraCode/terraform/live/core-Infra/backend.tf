terraform {
  backend "s3" {
    bucket  = "my-s3-bucket-fargate-1215656"
    key     = "core-infra/terraform.tfstate"
    region  = "us-east-1" # Adjust this to the region of your bucket
    encrypt = true
  }
}
