# @group "Kubernetes Configuration"
# @label "Name"
variable "name" {
  type        = string
  description = "Name of the deployment resource. Auto-generated if empty."
  default     = "redis-cart"
}

# @group "Kubernetes Configuration"
# @label "Namespace"
variable "namespace" {
  type        = string
  description = "Namespace to deploy. Auto-generated if empty."
  default     = ""
}

# @hidden
variable "service_name" {
  type        = string
  description = "Service name"
  default     = "redis-cart"
}

# @hidden
variable "walrus_metadata_service_name" {
  type        = string
  description = "Walrus metadata service name."
  default     = ""
}
# @hidden
variable "walrus_metadata_namespace_name" {
  type        = string
  description = "Walrus metadata namespace name."
  default     = ""
}
