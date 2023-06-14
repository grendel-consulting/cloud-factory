resource "aws_iam_role" "steampipe_cloud_role" {
  name = "steampipe_cloud"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = "SteampipeCloudAssumeRole"
        Principal = {
          AWS = "arn:aws:iam::${var.STEAMPIPE_ACCOUNT_ID}:root"
        },
        Condition : {
          StringEquals : {
            "sts:ExternalId" : var.STEAMPIPE_EXTERNAL_ID
          }
        }
      },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "steampipe_cloud_role_attach" {
  role       = aws_iam_role.steampipe_cloud_role.name
  policy_arn = "arn:aws:iam::aws:policy/ReadOnlyAccess"
}
