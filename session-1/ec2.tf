#resource "aws_instance" "my-ec2-resource" {
 #  ami = "ami-03265a0778a880afb" #devops-practice
 #  instance_type = "t2.micro"
#}

resource "aws_instance" "my-ec2-resource" {
   ami = var.ami_id #devops-practice
   instance_type = var.instance_type
   security_groups = [aws_security_group.allow_all.name]
   tags = var.tags
}
