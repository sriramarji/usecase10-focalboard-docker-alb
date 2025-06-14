resource "aws_vpc" "my-vpc" {
  cidr_block = var.vpc_cidr

  tags = {
    Name        = var.name
    Environment = var.environment
  }
}

resource "aws_internet_gateway" "my-igw" {
  vpc_id = aws_vpc.my-vpc.id

  tags = {
    Name = "${var.name}-Igw"
  }
}

resource "aws_route_table" "public-routing-table" {
  vpc_id = aws_vpc.my-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.my-igw.id
  }
  tags = {
    Name        = "${var.name}-Public-RT"
    Environment = var.environment
  }
}

data "aws_availability_zones" "available" {}

resource "aws_subnet" "public_subnet" {
  vpc_id = aws_vpc.my-vpc.id

  count      = 2
  cidr_block = cidrsubnet("192.168.16.0/20", 4, count.index)

  # 0 -   192.168.16.0/20+4 = 192.168.16.0/24 
  # 1 -                       192.168.17.0/24
  # 2 -                       192.168.18.0/24

  availability_zone       = data.aws_availability_zones.available.names[count.index]
  map_public_ip_on_launch = true

  tags = {
    Name = "${var.name}-PublicSubnet-${count.index}"
  }
}

resource "aws_route_table_association" "public" {
  count          = 2
  subnet_id      = aws_subnet.public_subnet[count.index].id
  route_table_id = aws_route_table.public-routing-table.id
}
