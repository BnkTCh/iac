provider "aws" {
access_key = "AcCeSsKeYAqUi"
secret_key = "SeCrEtKeYaQuI"
region = "us-east-1"
}

resource "aws_instance" "launch-instance-web" {
ami = "ami-02e136e904f3da870"
instance_type = "t2.micro"
key_name = "ebs-demo"
user_data = "${file("web-instance.sh")}"
vpc_security_group_ids = ["sg-0432c88b3c4bb036b"]
tags = {
Name = "Launch instance"
}
}