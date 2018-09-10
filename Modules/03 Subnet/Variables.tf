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
