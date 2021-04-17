resource "aws_iam_instance_profile" "instance_profile_frontend" {
  name = "instance_profile_frontend"
  role = aws_iam_role.iam_frontend.name
}