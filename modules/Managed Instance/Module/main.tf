locals {
  module_tag          = {
    "module" = basename(abspath(path.module))
  }
  arm_filename      = "${path.module}/arm_mi_isolated.json"
}