provider "aws" {
    region = "us-west-2"
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "webserver" {
    vpc_id = aws_vpc.main.id
    cidr_block = var.cidr_block
}

resource "aws_instance" "webserver" {
    ami = var.ami
    instance_type = var.instance_type
    subnet_id = aws_subnet.webserver.id

    tags = {
        Name = "${var.webserver_name} webserver"
    }
}
