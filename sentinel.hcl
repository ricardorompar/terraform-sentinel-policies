module "tfplan-functions" {
  source = "./common-functions/tfplan-functions/tfplan-functions.sentinel"
}

module "tfstate-functions" {
  source = "./common-functions/tfstate-functions/tfstate-functions.sentinel"
}

module "tfconfig-functions" {
  source = "./common-functions/tfconfig-functions/tfconfig-functions.sentinel"
}

module "aws-functions" {
  source = "./aws-functions/aws-functions.sentinel"
}

module "azure-functions" {
  source = "./azure-functions/azure-functions.sentinel"
}


policy "limit-cost-by-budget" {
      source= limit-cost-by-budget.sentinel
      enforcement_level = "soft-mandatory"
}

