bucket           = "heath-prod-s3-bucket"
acl              = "private"
object_ownership = "BucketOwnerEnforced"
versioning       = true

tags = {
  Environment = "prod"
  Owner       = "heath"
}
