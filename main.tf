resource "helm_release" "this" {
  name       = var.name
  repository = var.repository
  chart      = var.chart
  namespace  = var.namespace
  wait       = var.wait   #release my terminal, let me troubleshoot
  values     = var.values
}
