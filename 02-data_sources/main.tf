//data "aws_security_group" "selected" {
//  name = "allow-all"
//}

//output "security_group_id" {
//  value = data.aws_security_group.selected.id
//}
##above command prints security id of allow_all security group

data "aws_security_group" "test"{}
outtput "all_sg" {
  value = data.aws_security_groups.test
}
##above command prints security id of all security groups which u created in ec2

output "single" {
   value = data.aws_security_group.single
}