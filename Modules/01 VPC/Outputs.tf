##############################################################
#This module allows the creation of a GCP VPC
##############################################################
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