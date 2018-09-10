##############################################################
#This module allows the creation of a GCP Subnet for Custom VPC
##############################################################
#Variable declaration for Module

variable "SubnetCount" {
    default = "1"
}
variable "SubnetName" {
  default = ["TerraCreatedSubnet"]
}

variable "SubnetDesc" {
  type = "string" 
  default = "Terraform Created Resource"
}

variable "CIDRRangesList" {
  type = "list"  
  default = ["10.0.0.0/24"]
}

variable "VPC" {
  
}

variable "FlowlogsEnabled" {
    default = true
  
}

variable "ServiceEndpointEnabled" {
    default = true
}

variable "SubnetRegionList" {
    type = "list"
}


#Module resources

resource "google_compute_subnetwork" "TerraManualSubnet" {
  count                     = "${var.SubnetCount}"
  name                      = "${element(var.SubnetName,count.index)}"
  description               = "${var.SubnetDesc}"
  ip_cidr_range             = "${element(var.CIDRRangesList,count.index)}"
  region                    = "${element(var.SubnetRegionList,count.index)}"
  network                   = "${var.VPC}"
  enable_flow_logs          = "${var.FlowlogsEnabled}"
  private_ip_google_access  = "${var.ServiceEndpointEnabled}"
}

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