resource "aws_security_group" "pike" {
	# checkov:skip=CKV2_AWS_5: is connected

  description = "EKS created security group applied to ENI that is attached to EKS Control Plane master nodes, as well as any managed workloads."
  name        = "eks-cluster-sg-pike-3440915"
  egress = [
    {
      cidr_blocks = [
        "0.0.0.0/0",
      ]
      description      = ""
      from_port        = 0
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      protocol         = "-1"
      security_groups  = []
      self             = false
      to_port          = 0
    },
  ]

  ingress = [
    {
      cidr_blocks      = []
      description      = ""
      from_port        = 0
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      protocol         = "-1"
      security_groups  = []
      self             = true
      to_port          = 0
    },
  ]

  tags = var.sg-tags
}

variable "sg-tags" {
  type = map(any)
  default = {
    "Name"                       = "eks-cluster-sg-pike-3440915"
    "kubernetes.io/cluster/pike" = "owned"
  }
}
