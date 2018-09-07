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

module "Subnets" {
  #Module location
  source = "./Modules/03 Subnet"

  #Module variables

  SubnetCount   = "2"
  SubnetName = ["subnet1","subnet2"]  
  CIDRRangesList = ["10.0.0.0/24","10.0.1.0/24"]
  VPC = "${module.ManualVPC.Name}"
  SubnetRegionList = "${var.GCPRegions}"
}
