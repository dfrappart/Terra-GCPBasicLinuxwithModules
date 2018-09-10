##############################################################
#This module allows the creation of a GCP Subnet for Custom VPC
##############################################################
##############################################################
#This module allows the creation of a GCP Subnet for Custom VPC
##############################################################

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

