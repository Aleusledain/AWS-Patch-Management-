module "iam_role_ssm" {
  source = "../../modules/iam_role_ssm"
}

module "ec2_instance" {
  source              = "../../modules/ec2_instance"
  instance_profile    = module.iam_role_ssm.ssm_profile.name
}

module "patch_baseline_linux" {
  source          = "../../modules/patch_baseline"
  name            = "LinuxBaseline"
  os              = "AMAZON_LINUX_2"
  classifications = ["Security", "Critical"]
}

module "patch_group" {
  source            = "../../modules/patch_group"
  patch_baseline_id = module.patch_baseline_linux.baseline.id
  patch_group_name  = "DevGroup"
}

module "maintenance_window" {
  source   = "../../modules/maintenance_window"
  name     = "DevPatchWindow"
  schedule = "cron(0 3 ? * SUN *)"
  duration = 2
  cutoff   = 1
}

