 resource "aws_instance" "web" {
   ami           = "ami-0b5a2b5b8f2be4ec2"
   instance_type = "t3.micro"

   tags = {
     Name = "HelloWorld"
   }
 }
 //above code is to create the instance_type


 //output "frontend" {
    value=aws_instance.frontend.public_ip
 }
//above code is to get the public_ip of frontednd server


//resource "aws_route53_record" "frontend" {
   zone_id = "Z08621443HT6YNQD1Z6GT"
   name    = "frontend-dev.ndevopsb72.online"
   type    = "A"
   ttl     = 30
   records = [aws_instance.frontend.private_ip]
 }
 //above code is to create dns records

