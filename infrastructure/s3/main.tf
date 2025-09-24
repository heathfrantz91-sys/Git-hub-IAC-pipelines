provider "aws" {
  region = "us-east-1"
}

module "s3_bucket" {
  source = "git::https://github.com/heathfrantz91-sys/Modules"

  bucket                      = var.bucket
  acl                         = "private"
  control_object_ownership    = true
  object_ownership            = "ObjectWriter"

  versioning = {
    enabled = true
  }
}
