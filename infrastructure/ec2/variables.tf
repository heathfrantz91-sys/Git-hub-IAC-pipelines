variable "name" {
  description = "Name of the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "ami" {
  description = "AMI ID to use for the EC2 instance"
  type        = string
}

variable "key_name" {
  description = "SSH key pair to attach"
  type        = string
  default     = null
}

variable "subnet_id" {
  description = "Subnet ID where the instance will be launched"
  type        = string
}

variable "security_group_ids" {
  description = "List of security group IDs"
  type        = list(string)
  default     = []
}

variable "tags" {
  description = "Map of tags to apply to the instance"
  type        = map(string)
  default     = {}
}

variable "cpu_core_count" {
  description = "Number of CPU cores (optional)"
  type        = number
  default     = null
}

variable "cpu_threads_per_core" {
  description = "Threads per core (optional)"
  type        = number
  default     = null
}

variable "vpc_security_group_ids" {
  description = "List of security group IDs"
  type        = list(string)
}
