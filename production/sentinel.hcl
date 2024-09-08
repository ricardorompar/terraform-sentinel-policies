module "tfplan-functions" {
  source = "${path.root}/common-functions/tfplan-functions/tfplan-functions.sentinel"
}

module "tfstate-functions" {
  source = "${path.root}/common-functions/tfstate-functions/tfstate-functions.sentinel"
}

module "tfconfig-functions" {
  source = "${path.root}/common-functions/tfconfig-functions/tfconfig-functions.sentinel"
}

module "aws-functions" {
  source = "${path.root}/aws-functions/aws-functions.sentinel"
}

policy "restrict-ec2-instance-type" {
    source = "${path.root}/custom-functions/restrict-ec2-instance-type.sentinel"
    enforcement_level = "soft-mandatory"
}