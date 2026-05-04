module "eks_cluster" {
  source     = "../../"
  kms_key_id = aws_kms_key.eks.arn
  name       = "pike"
  role_name  = "eks_cluster"
  tags = {
    pike = "permissions"
  }
}


resource "aws_kms_key" "eks" {
  # checkov:skip=CKV2_AWS_64: For example only, key policy managed via IAM
  enable_key_rotation = true
}
