variable "name" {
  type        = string
  description = "Name of the deployment resource. Auto-generated if empty."
  default     = "redis-cart"
}

variable "namespace" {
  type        = string
  description = "Namespace to deploy. Auto-generated if empty."
  default     = ""
}

variable "service_name" {
  type        = string
  description = "Service name"
  default     = "redis-cart"
}

variable "context" {
  description = <<-EOF
Receive contextual information. When Walrus deploys, Walrus will inject specific contextual information into this field.

Examples:
```
context:
  project:
    name: string
    id: string
  environment:
    name: string
    id: string
  resource:
    name: string
    id: string
```
EOF
  type        = map(any)
  default     = {}
}
