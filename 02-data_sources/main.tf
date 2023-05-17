data "aws_security_group" "selected" {
  name = "allow-all"
}

output "security_group_id" {
  value = data.aws_security_group.selected.id
}
##above command prints security id of allow_all security group