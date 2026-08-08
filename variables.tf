variable "name" {
  description = "Please specify a name for your deployment"
  type        = string
  default     = "demo"
}

variable "namespace" {
  description = "Please specify a namespace for your deployment"
  type        = string
  default     = "default"
}

variable "repository" {
  description = "Please specify a repository for your deployment"
  type        = string
  default     = null
}

variable "chart" {
  description = "Please specify a chart for your deployment"
  type        = string
}

variable "wait" {
  description = "Please specify if you want to wait or not"
  type        = bool
  default     = false
}

variable "values" {
  description = "Please specify value for your deployment"
  type        = list(any)
  default     = []
}
