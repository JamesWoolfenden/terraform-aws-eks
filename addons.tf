resource "aws_eks_addon" "vpc-cni" {
  cluster_name = aws_eks_cluster.pike.name
  addon_name   = "vpc-cni"
}

resource "aws_eks_addon" "kube-proxy" {
  cluster_name = aws_eks_cluster.pike.name
  addon_name   = "kube-proxy"
}

resource "aws_eks_addon" "coredns" {
  cluster_name = aws_eks_cluster.pike.name
  addon_name   = "coredns"
}


//terraform import module.eks_cluster.aws_eks_addon.vpc-cni pike:vpc-cni
//terraform import module.eks_cluster.aws_eks_addon.kube-proxy pike:kube-proxy
//terraform import module.eks_cluster.aws_eks_addon.coredns pike:coredns
