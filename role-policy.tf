resource "aws_iam_policy_attachment" "policy_attachment_lambda" {
  name       = "policy_attachment_lambda"
  policy_arn = aws_iam_policy.policy_lambda.arn
  roles      = [aws_iam_role.iam_lambda.name]
}

resource "aws_iam_policy_attachment" "policy_attachment_AWSLambdaVPCAccessExecutionRole" {
  name       = "policy_attachment_AWSLambdaVPCAccessExecutionRole"
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaVPCAccessExecutionRole"
  roles = [aws_iam_role.iam_lambda.name]
}

resource "aws_iam_policy_attachment" "policy_attachment_AmazonS3ReadOnlyAccess" {
  name       = "policy_attachment_AmazonS3ReadOnlyAccess"
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"
  roles = [aws_iam_role.iam_frontend.name]
}