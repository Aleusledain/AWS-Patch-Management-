resource "aws_ssm_patch_group" "group" {
  baseline_id     = var.patch_baseline_id
  patch_group     = var.patch_group_name
}
