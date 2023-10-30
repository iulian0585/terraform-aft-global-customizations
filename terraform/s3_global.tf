# data "aws_caller_identity" "current" {}

# resource "aws_s3_bucket" "sandbox_bucket" {
#   bucket = "aft-global-${data.aws_caller_identity.current.account_id}"
#   tags = {
#     managed_by = "AFT"
#     created_by = "terraform-aft-global-customizations"
#   }
# }
