module "ec2_instance" {
  source                 = "../../modules/ec2_instance"
  instance_profile       = module.iam_role_ssm.ssm_profile.name
  vpc_security_group_ids = var.vpc_security_group_ids
  subnet_id              = var.subnet_id
  ami                    = var.ami
  instance_type          = var.instance_type
  name                   = var.instance_name
  aws_ssm_patch_baseline = module.patch_baseline_linux.baseline.id
  aws_iam_role           = module.iam_role_ssm.ssm_role.name
}
