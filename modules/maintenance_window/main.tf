resource "aws_ssm_maintenance_window" "window" {
  name     = "DevPatchWindow"
  schedule = "cron(0 3 ? * SUN *)" # Every Sunday at 3 AM UTC
  duration = 2
  cutoff   = 1
  allow_unassociated_targets = true
}
