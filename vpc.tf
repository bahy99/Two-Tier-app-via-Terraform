resource "aws_vpc" "my_vpc" {
  cidr_block = "11.11.0.0/16"
   tags = {
    Name = "two-tier-app-project"  
  }
}


resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.my_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.my_igw.id
  }
}

resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.my_vpc.id
  cidr_block              = "11.11.1.0/24"
  availability_zone       = "us-east-1a"  
  map_public_ip_on_launch = true

  tags = {
    Name = "App Subnet"
  }
}

resource "aws_route_table_association" "public_subnet_association" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.public_route_table.id
}

resource "aws_subnet" "private_subnet" {
  vpc_id                  = aws_vpc.my_vpc.id
  cidr_block              = "11.11.2.0/24"
  availability_zone       = "us-east-1b"  

  tags = {
    Name = "DB Subnet"
  }
}
