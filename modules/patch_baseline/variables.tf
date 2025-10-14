variable "name" {}
variable "os" {}
variable "classifications" {
  type = list(string)
}
variable "approval_delay" {
  default = 3
}
