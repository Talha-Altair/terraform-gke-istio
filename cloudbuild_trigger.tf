resource "google_cloudbuild_trigger" "filename-trigger" {
  trigger_template {
    branch_name = var.cloudbuild_repo_branch
    repo_name   = var.cloudbuild_repo_name
  }

#   substitutions = {
#     _FOO = "bar"
#     _BAZ = "qux"
#   }

  filename = var.cloudbuild_filename
}