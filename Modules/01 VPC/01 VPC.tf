##############################################################
#This module allows the creation of a GCP VPC
##############################################################
#Variable declaration for Module

variable "VPCName" {
  default = "TerraCreatedVPC"
}

variable "VPCDesc" {
  default = "Terraform Created Resource"
}

variable "IsAutoVPC" {
  default = false
}

variable "VPCRoutingMode" {
  default = "REGIONAL"
}

#Module resources

resource "google_compute_network" "TerraManualVPC" {
  name                    = "${var.VPCName}"
  description             = "${var.VPCDesc}"
  auto_create_subnetworks = "${var.IsAutoVPC}"
  routing_mode            = "${var.VPCRoutingMode}"
}

#Module output

output "Name" {
  value = "${google_compute_network.TerraManualVPC.name}"
}

output "GWIPv4" {
  value = "${google_compute_network.TerraManualVPC.gateway_ipv4}"
}

output "URI" {
  value = "${google_compute_network.TerraManualVPC.self_link}"
}
