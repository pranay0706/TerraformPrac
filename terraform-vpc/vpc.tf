resource "aws_vpc" "dev-vpc" {
    cidr_block = "10.0.0.0/16" #CIDR block for the VPC
    enable_dns_support = "true" #gives you an internal domain name
    enable_dns_hostnames = "true" #gives you an internal host name
    instance_tenancy = "default"

    tags = {
        Name = "my-vpc-01"
    }
}

resource "aws_subnet" "dev-subnet-public-1" {
    vpc_id = "${aws_vpc.dev-vpc.id}" //Attaching the VPC to subnet 
    cidr_block = "10.0.1.0/24" #CIDR block for the subnet
    map_public_ip_on_launch = "true" //it makes this a public subnet
    availability_zone = "us-west-2a"
    tags = {
        Name = "my-subnet-public-01"
    }
}