resource "aws_iam_user" "kamleshyadav"{
name = var.name
path = var.path
permissions_boundary = var.permissions_boundary
tags = {
tag-key = "tag-value"
}

}


resource "aws_iam_access_key" "lb" {
user = aws_iam_user.kamleshyadav.name
}


resource "aws_iam_user_policy" "kamlesh" {
  name =  "abhi"
  user = aws_iam_user.kamleshyadav.name

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "ec2:Describe*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF
}

