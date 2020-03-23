variable "name" {
  default = string
}

variable "environment_name" {
  default = string
}

variable "project_name" {
  default = string
}

variable "terraform" {
  default = string
}

variable "public_key_material" {
  description = "Public key to add in the instance."
}
