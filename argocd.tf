resource "helm_release" "argocd" {
  name  = "argocd"
  chart = "./argo-chart"

  timeout         = 120
  cleanup_on_fail = true
  force_update    = true
  namespace       = "argocd"

  depends_on = [module.gke-cluster, kubernetes_namespace.argocd]
}