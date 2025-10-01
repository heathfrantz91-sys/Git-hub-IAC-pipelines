variable "bucket" {
  description = "S3 bucket name"
  type        = string
}

variable "acl" {
  description = "S3 bucket ACL"
  type        = string
  default     = "private"
}

variable "control_object_ownership" {
  description = "Control ownership flag"
  type        = bool
  default     = true
}

variable "object_ownership" {
  description = "Ownership setting"
  type        = string
  default     = "ObjectWriter"
}

variable "versioning" {
  description = "Enable versioning (true/false)"
  type        = bool
  default     = true
}

variable "tags" {
  description = "Tags for the bucket"
  type        = map(string)
  default     = {}
}
