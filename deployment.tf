resource "helm_release" "deployment" {
  name  = var.deployment_name
  chart = "./deployment-chart"

  namespace        = var.deployment_name
  create_namespace = true

  depends_on = [module.gke-cluster]
}
