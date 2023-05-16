data "aws_security_group" "selected" {
  name = "allow-all"
}

output "security_group.id"
{
  value = data.aws_security_group.selected
}