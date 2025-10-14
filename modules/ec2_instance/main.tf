resource "aws_instance" "linux" {
  ami           = "ami-0c02fb55956c7d316" # Amazon Linux 2
  instance_type = "t2.micro"
  iam_instance_profile = var.instance_profile
  tags = {
    Name        = "PatchableLinux"
    PatchGroup  = "DevGroup"
    Environment = "Dev"
  }
}
