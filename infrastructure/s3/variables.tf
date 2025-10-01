variable "bucket" {
  description = "Name of the S3 bucket"
  type        = string
}

variable "acl" {
  description = "Access control list setting for the bucket"
  type        = string
  default     = "private"
}

variable "object_ownership" {
  description = "Ownership type for the bucket (e.g., ObjectWriter)"
  type        = string
  default     = "ObjectWriter"
}

variable "versioning_enabled" {
  description = "Whether to enable versioning on the S3 bucket"
  type        = bool
  default     = false
}

variable "tags" {
  description = "Tags for the S3 bucket"
  type        = map(string)
  default     = {}
}
