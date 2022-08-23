terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"

    }
  }
}

provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIAYH4Y7SQAB7MLFDIB"
  secret_key = "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"
}

resource "aws_budgets_budget" "like-and_subscribe" {
  name              = "monthly-budget"
  budget_type       = "COST"
  limit_amount      = "100.0"
  limit_unit        = "USD"
  time_unit         = "MONTHLY"
  time_period_start = "2022-08-01_00:01"
}
