module "gke-cluster" {

  source = "./modules/gke"

  region = var.region

  creds_file_path = var.creds_file_path

  project_id = var.project_id

  cluster_name = var.cluster_name

  gke_num_nodes = var.gke_num_nodes

  machine_type = var.machine_type

  node_locations = var.node_locations

}
