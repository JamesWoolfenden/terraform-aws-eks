variable "tags" {
  type        = map(any)
  description = ""
}

variable "subnet_ids" {
  type        = list(string)
  description = ""
  default     = ["subnet-09ff91b5b0adb1fd4", "subnet-05e87623a2a5c41f0", "subnet-043bb893867355740"]
}

variable "kms_key_id" {
  type        = string
  description = ""
}

variable "name" {
  type        = string
  description = ""
}

variable "role_name" {
  type        = string
  description = "(optional) describe your variable"
}
