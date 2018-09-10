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