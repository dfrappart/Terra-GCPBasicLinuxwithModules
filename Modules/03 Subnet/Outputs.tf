##############################################################
#This module allows the creation of a GCP Subnet for Custom VPC
##############################################################
#Module output


output "Names" {
  value = ["${google_compute_subnetwork.TerraManualSubnet.*.name}"]
}

output "CIDRRanges" {
  value = ["${google_compute_subnetwork.TerraManualSubnet.*.ip_cidr_range}"]
}

output "GWAddresses" {
  value = ["${google_compute_subnetwork.TerraManualSubnet.*.gateway_address}"]
}

output "Fingerprints" {
  value = ["${google_compute_subnetwork.TerraManualSubnet.*.fingerprint}"]
}

output "Selflinks" {
  value = ["${google_compute_subnetwork.TerraManualSubnet.*.self_link}"]
}