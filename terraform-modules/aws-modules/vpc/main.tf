provider "aws" {
    region = "us-west-2"
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}

module "gurus_webserver" {
    source = "../../terraform/aa-dev"
    vpc_id = aws_vpc.main.id
    cidr_block = "10.0.0.0/16"
    webserver_name = "Guru"
    ami = "ami-08e4e35cccc6189f4"
    instance_type = "t2.micro"
}
