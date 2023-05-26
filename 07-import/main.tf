resource "aws_instance" "workstation" {}

output "private_ip" {
value = aws_instance.private_ip
}