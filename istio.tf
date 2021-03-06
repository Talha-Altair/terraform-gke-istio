resource "helm_release" "istio_base" {
  name  = "istio-base"
  chart = "${var.istio_location}/manifests/charts/base"

  timeout         = 120
  cleanup_on_fail = true
  force_update    = true
  namespace       = "istio-system"


  depends_on = [module.gke-cluster, kubernetes_namespace.istio_system]
}

resource "helm_release" "istiod" {
  name  = "istiod"
  chart = "${var.istio_location}/manifests/charts/istio-control/istio-discovery"

  timeout         = 120
  cleanup_on_fail = true
  force_update    = true
  namespace       = "istio-system"

  depends_on = [module.gke-cluster, kubernetes_namespace.istio_system, helm_release.istio_base]
}

resource "helm_release" "istio_ingress" {
  name  = "istio-ingress"
  chart = "${var.istio_location}/manifests/charts/gateways/istio-ingress"

  timeout         = 120
  cleanup_on_fail = true
  force_update    = true
  namespace       = "istio-system"

  depends_on = [module.gke-cluster, kubernetes_namespace.istio_system, helm_release.istiod]
}

resource "helm_release" "istio_egress" {
  name  = "istio-egress"
  chart = "${var.istio_location}/manifests/charts/gateways/istio-egress"

  timeout         = 120
  cleanup_on_fail = true
  force_update    = true
  namespace       = "istio-system"

  depends_on = [module.gke-cluster, kubernetes_namespace.istio_system, helm_release.istiod]
}

resource "helm_release" "istio_addons" {
  name  = "istio-addons"
  chart = "./istio-addons-chart"

  timeout         = 120
  cleanup_on_fail = true
  force_update    = true
  namespace       = "istio-system"

  depends_on = [module.gke-cluster, kubernetes_namespace.istio_system, helm_release.istiod]
}