resource "helm_release" "this" {
  name       = "var.name"
  repository = "var.repository"
  chart      = "var.chart"
}