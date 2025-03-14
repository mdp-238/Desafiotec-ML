resource "aws_vpc" "main" { 
	cidr_block	= "10.0.0.0/16" 
} 

resource "aws_subnet" "public_1" { 
	vpc_id			= aws_vpc.main.id 
	cidr_block		= "192.168.1.0/24" 
	map_public_ip_on_launch	= true 
	availability_zone	= "us-east-1a" 
} 

resource "aws_subnet" "public_2" { 
	vpc_id			= aws_vpc.main.id 
	cidr_block		= "192.168.2.0/24" 
	map_public_ip_on_launch	= true 
	availability_zone	= "us-east-1b" 
} 

resource "aws_subnet" "private_1" { 
	vpc_id			= aws_vpc.main.id 
	cidr_block		= "10.0.1.0/24" 
	availability_zone	= "us-east-1a" 
} 

resource "aws_subnet" "private_2" { 
	vpc_id			= aws_vpc.main.id 
	cidr_block		= "10.0.2.0/24" 
	availability_zone	= "us-east-1b" 
} 

