resource "aws_ssm_patch_baseline" "baseline" {
  name             = var.name
  operating_system = var.os
  approved_patches_compliance_level = "CRITICAL"
  approval_rules {
    patch_filter {
      key    = "CLASSIFICATION"
      values = var.classifications
    }
    approve_after_days = var.approval_delay
  }
}
