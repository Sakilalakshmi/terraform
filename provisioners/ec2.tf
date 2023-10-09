resource "aws_instance" "provisioners" {
    ami = "ami-03265a0778a880afb"
    instance_type = "t2.micro"
    
     provisioner "local-exec" {
    command = "echo ${self.private_ip} > inventory"
  }
}

resource "aws_instance" "remote" {
    ami = "ami-03265a0778a880afb"
    instance_type = "t2.micro"
    security_groups = ["sg-0bb1d721bc86e4884"]
    subnet_id = "subnet-04ed3770c5ed301a6"
    
    connection {
    type     = "ssh"
    user     = "centos"
    password = "DevOps321"
    host     = self.public_ip
  }
  provisioner "remote-exec" {
    inline = [
      "sudo yum install nginx -y",
      "sudo systemctl start nginx",
    ]
  }
}