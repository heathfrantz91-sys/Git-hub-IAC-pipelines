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
  description = "Ownership setting for S3 bucket objects"
  type        = string
  default     = "ObjectWriter"
}

variable "versioning" {
  description = "Enable versioning for the S3 bucket"
  type        = bool
  default     = true
}

variable "tags" {
  description = "Tags for the bucket"
  type        = map(string)
  default     = {}
}
