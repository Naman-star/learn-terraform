//data "aws_security_group" "selected" {
//  name = "allow-all"
//}

//output "security_group_id" {
//  value = data.aws_security_group.selected.id
//}
##above command prints security id of allow_all security group

data "aws_security_groups" "test"{}
output "all_sg" {
  value = data.aws_security_groups.test
}
##above command prints security id of all security groups which u created in ec2 but here u cant able to see security name

data "aws_security_group" "single"{
  count = length(data.aws_security_groups.test.ids)
  id = data.aws_security_groups.test.ids[count.index]
}

output "single" {
   value = data.aws_security_group.single
}
##above command prints security id of all security groups which u created in ec2 but here u can able to see security name