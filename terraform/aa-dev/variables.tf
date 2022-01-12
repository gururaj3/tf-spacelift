variable "vpc_id" {
    type = string
}

variable "cidr_block" {
    type = string
}

variable "webserver_name" {
    type = string
}

variable "ami" {
    type = string
}

variable "instance_type" {
    type = string
    default = "t2.micro"
}
