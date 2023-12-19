resource "aws_vpc" "primary_network" {
  cidr_block = "10.100.0.0/16"

  tags = {
    Name = "ntier"
  }

}


resource "aws_subnet" "web" {
  cidr_block = "10.100.0.0/24"
  vpc_id     = aws_vpc.primary_network.id
  tags = {
    Name = "web"
  }
}