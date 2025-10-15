variable "name" {
  description = "Name of the maintenance window"
  type        = string
  default     = "DevPatchWindow"
}

variable "schedule" {
  description = "Cron schedule for the maintenance window"
  type        = string
  default     = "cron(0 3 ? * SUN *)" # Every Sunday at 3 AM UTC
}

variable "duration" {
  description = "Duration of the maintenance window in hours"
  type        = number
  default     = 2
}

variable "cutoff" {
  description = "Cutoff time in hours before the end of the window"
  type        = number
  default     = 1
}
