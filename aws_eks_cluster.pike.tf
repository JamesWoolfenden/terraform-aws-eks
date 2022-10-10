resource "aws_eks_cluster" "pike" {   
  name= var.name
  role_arn = aws_iam_role.pike.arn
  vpc_config {
    endpoint_public_access = false
    subnet_ids = var.subnet_ids
  }

  tags = var.tags
  encryption_config {
    resources = ["secrets"]
  provider {
    key_arn=var.kms_key_id
  }
  }
  enabled_cluster_log_types = ["api", "audit", "authenticator","controllerManager","scheduler"]
}



