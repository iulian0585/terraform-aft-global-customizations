resource "aws_iam_role" "administrator_role" {
  name = "Administrator"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Sid    = "AllowWebIdentitySession"
        Action = [ "sts:AssumeRole", "sts:AssumeRoleWithWebIdentity" ]
        Effect = "Allow"
        Principal = {
          "AWS": [
            "arn:aws:sts::635937700821:assumed-role/AWSReservedSSO_AWSAdministratorAccess_1e59c9c2b9958f62/iulian",
					  "arn:aws:sts::635937700821:assumed-role/AWSReservedSSO_AWSAdministratorAccess_1e59c9c2b9958f62/iustin"
          ]
        }
      },
    ]
  })
  managed_policy_arns = ["arn:aws:iam::aws:policy/AdministratorAccess"]
  tags = {
    managed_by = "AFT"
    created_by = "terraform-aft-global-customizations"
  }
}