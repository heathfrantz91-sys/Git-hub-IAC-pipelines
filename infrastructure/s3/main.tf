provider "aws" {
  region = "us-east-1"
}

module "s3_bucket" {
  source = "git::https://github.com/heathfrantz91-sys/Modules.git//aws/s3?ref=main"

  bucket                   = var.bucket
  acl                      = var.acl
  control_object_ownership = var.control_object_ownership
  object_ownership         = var.object_ownership
  versioning               = {
    enabled = var.versioning
  }
  tags = var.tags
}
