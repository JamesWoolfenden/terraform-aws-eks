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
  enable_key_rotation = true
}
