variable "configuration" {
  description = "Configuration of instances"
  type = list(object({
    name                   = string
    ami                    = string
    instance_type          = string
    vpc_security_group_ids = list(string)
    subnet_id              = string
    tags                   = object({})
  }))
  nullable = false
}

variable "project" {
  description = "Project name, should map to NICC code"
  default     = "demo"
}
