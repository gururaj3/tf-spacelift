# variable "vpc_id" {
#     type = string
# }

variable "cidr_block" {
    type = string
    default = "10.0.0.0/16"
}

variable "webserver_name" {
    type = string
    default = "Guru-default"
}

variable "ami" {
    type = string
    default = "ami-08e4e35cccc6189f4"
}

variable "instance_type" {
    type = string
    default = "t2.micro"
}
