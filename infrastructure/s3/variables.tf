variable "bucket" {
  description = "The name of the S3 bucket"
  type        = string
}

variable "acl" {
  description = "Canned ACL to apply (e.g., private, public-read)"
  type        = string
  default     = "private"
}

variable "control_object_ownership" {
  description = "Whether to control object ownership behavior"
  type        = bool
  default     = true
}

variable "object_ownership" {
  description = "Object ownership setting (e.g., BucketOwnerEnforced)"
  type        = string
  default     = "BucketOwnerEnforced"
}

variable "versioning" {
  description = "Enable versioning for the S3 bucket"
  type        = bool
  default     = true
}
