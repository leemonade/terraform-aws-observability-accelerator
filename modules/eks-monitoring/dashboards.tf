resource "grafana_dashboard" "cluster" {
  count       = var.enable_dashboards ? 1 : 0
  folder      = var.grafana_folder_id
  config_json = file("${path.module}/dashboards/cluster.json")
}

resource "grafana_dashboard" "kube-proxy" {
  count       = var.enable_dashboards ? 1 : 0
  folder      = var.grafana_folder_id
  config_json = file("${path.module}/dashboards/kube-proxy.json")
}

resource "grafana_dashboard" "kubelet" {
  count       = var.enable_dashboards ? 1 : 0
  folder      = var.grafana_folder_id
  config_json = file("${path.module}/dashboards/kubelet.json")
}

resource "grafana_dashboard" "namespace-workloads" {
  count       = var.enable_dashboards ? 1 : 0
  folder      = var.grafana_folder_id
  config_json = file("${path.module}/dashboards/namespace-workloads.json")
}

resource "grafana_dashboard" "nodeexporter-nodes" {
  count       = var.enable_dashboards ? 1 : 0
  folder      = var.grafana_folder_id
  config_json = file("${path.module}/dashboards/nodeexporter-nodes.json")
}

resource "grafana_dashboard" "nodes" {
  count       = var.enable_dashboards ? 1 : 0
  folder      = var.grafana_folder_id
  config_json = file("${path.module}/dashboards/nodes.json")
}

resource "grafana_dashboard" "workloads" {
  count       = var.enable_dashboards ? 1 : 0
  folder      = var.grafana_folder_id
  config_json = file("${path.module}/dashboards/workloads.json")
}
