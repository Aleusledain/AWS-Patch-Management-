output "maintenance_window_id" {
  description = "ID of the created maintenance window"
  value       = aws_ssm_maintenance_window.window.id
}
