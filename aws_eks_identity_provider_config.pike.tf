# resource aws_eks_identity_provider_config "pike" {
#     cluster_name = aws_eks_cluster.pike.name
#     oidc {
#         client_id                     = "your client_id"
#         identity_provider_config_name = "example"
#         issuer_url                    = "your issuer_url"
#     }
# }


//  aws eks list-identity-provider-configs --cluster-name pike --region eu-west-2