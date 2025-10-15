# EC2 Instance
instance_profile = "SSMInstanceProfile"

# Patch Baseline
name            = "LinuxBaseline"
os              = "AMAZON_LINUX_2"
classifications = ["Security", "Critical"]
approval_delay  = 3

# Patch Group
patch_baseline_id = "PLACEHOLDER"      # You can override this in main.tf if needed
patch_group_name  = "DevGroup"

# Maintenance Window
name     = "DevPatchWindow"
schedule = "cron(0 3 ? * SUN *)"
duration = 2
cutoff   = 1
