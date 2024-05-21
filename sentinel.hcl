module "tfplan-functions" {
  source = "./common-functions/tfplan-functions/tfplan-functions.sentinel"
}

policy "limit-cost-by-budget" {
      source= limit-cost-by-budget.sentinel
      enforcement_level = "soft-mandatory"
}

