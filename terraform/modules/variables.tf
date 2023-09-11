variable "cluster_name" {
  type = string
}

variable "service_name" {
  type = string
}

variable "image_name" {
  type = string
  default = "test-image-name"
}

variable "app_environment" {
  type = string
  default = "dev"
}

variable "congfig_version" {
  type = number
  default = 1.0.01
}