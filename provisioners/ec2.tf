resource "aws_instance" "provisioners" {
    ami = "ami-03265a0778a880afb"
    instance_type = "t2.micro"
    
     provisioner "local-exec" {
    command = "echo ${self.private_ip} > inventory"
  }
}