##############################################################
#Main config file
##############################################################

##############################################################
#Provider Config

provider "google" {
  credentials = "${file("./authentication.json")}"
  project     = "${var.GCPProject}"
}

##############################################################
#VPC Manual creation

module "ManualVPC" {
  #Module location
  source = "./Modules/01 VPC"

  #Module variables

  VPCName = "vpctest01"
}

module "AutoVPC" {
  #Module location
  source = "./Modules/01 VPC"

  #Module variables

  VPCName   = "vpctest02"
  IsAutoVPC = true
}


