variable "bucket" {
  description = "S3 bucket name"
  type        = string
}

variable "acl" {
  description = "S3 bucket ACL"
  type        = string
  default     = "private"
}

variable "object_ownership" {
  description = "S3 bucket ownership control (e.g. ObjectWriter)"
  type        = string
  default     = "ObjectWriter"
}

variable "versioning" {
  description = "Enable versioning on the bucket"
  type        = bool
  default     = true
}

variable "tags" {
  description = "Tags to apply to the bucket"
  type        = map(string)
  default     = {}
}
