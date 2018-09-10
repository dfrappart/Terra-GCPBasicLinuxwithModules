######################################################
# This file defines which value are sent to output
######################################################

######################################################
# Manual VPC Info

output "ManualVPCName" {
    value = "${module.ManualVPC.Name}"
}

output "ManualVPCGWIPv4" {
    value = "${module.ManualVPC.GWIPv4}"
}

output "ManualVPCURI" {
    value = "${module.ManualVPC.URI}"
}

######################################################
# Auto VPC Info

output "AutoVPCName" {
    value = "${module.AutoVPC.Name}"
}

output "AutoVPCGWIPv4" {
    value = "${module.AutoVPC.GWIPv4}"
}

output "AutoVPCURI" {
    value = "${module.AutoVPC.URI}"
}

######################################################
# Subnets Info

output "SubnetsName" {
    value = ["${module.Subnets.Names}"]
}

output "SubnetsGWAddresses" {
    value = ["${module.Subnets.GWAddresses}"]
}

output "SubnetsFingerprints" {
    value = ["${module.Subnets.Fingerprints}"]
}

output "SubnetsSelflinks" {
    value = ["${module.Subnets.Selflinks}"]
}

output "SubnetsCIDRRanges" {
    value = ["${module.Subnets.CIDRRanges}"]
}