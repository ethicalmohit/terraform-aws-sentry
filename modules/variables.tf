variable "tags" {
  type        = map(string)
  description = "Tags to be set when instance will be provisioned."
}

variable "public_key_material" {
  description = "Public key to add in the instance."
}

variable "instance_type" {
  type        = string
  default     = "t2.large"
  description = "Type of the instance to spawn."
}
