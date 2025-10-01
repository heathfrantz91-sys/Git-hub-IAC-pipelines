bucket             = "my-prod-s3-bucket"
acl                = "private"
object_ownership   = "ObjectWriter"
versioning_enabled = true

tags = {
  Environment = "prod"
  Owner       = "YourName"
}
