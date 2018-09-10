##############################################################
#This module allows the creation of a GCP VPC
##############################################################

#Module resources

resource "google_compute_network" "TerraManualVPC" {
  name                    = "${var.VPCName}"
  description             = "${var.VPCDesc}"
  auto_create_subnetworks = "${var.IsAutoVPC}"
  routing_mode            = "${var.VPCRoutingMode}"
}