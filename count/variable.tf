variable "ami_id" {
    default = "ami-03265a0778a880afb"
}

variable "instance_names" {
    type = list
    default = ["MongoDB","cart","catalogue","user","MySQL","shipping","RabbitMQ","Redis","payment","web"]
}

variable  "zone_id" {
    default = "Z00043753TCDUBIDVPH4N"
}

variable "domain_name" {
    default = "learningdevops.shop"
}