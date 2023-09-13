locals {
    ami_id = "ami-03265a0778a880afb"
    public_key = file("${path.module}/ammu.pub")
    instance_type = var.isPROD ? "t3.medium" : "t2.micro"
}