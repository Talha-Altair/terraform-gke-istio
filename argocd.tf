resource "helm_release" "istio_addons" {
  name  = "istio_addons"
  chart = "./istio-addons-chart"

  timeout         = 120
  cleanup_on_fail = true
  force_update    = true
  namespace       = "argocd"

  depends_on = [module.gke-cluster, kubernetes_namespace.argocd]
}