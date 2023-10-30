resource "aws_iam_role" "administrator_role" {
  name = "Administrator"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = ""
        Principal = {
          "AWS" : "arn:aws:iam::635937700821:root"
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