resource "aws_route_table" "rtb" {
  vpc_id = var.rtb_vpc

  tags = var.rtb_tags
}


resource "aws_route" "route_internet_gateway" {
  count                  = var.route_internet_gateway_bool ? 1 : 0
  route_table_id         = aws_route_table.rtb.id
  destination_cidr_block = var.route_destination_cidr_block
  gateway_id             = var.route_internet_gateway
}

resource "aws_route" "route_nat_gateway" {
  count                  = var.route_nat_gateway_bool ? 1 : 0
  route_table_id         = aws_route_table.rtb.id
  destination_cidr_block = var.route_destination_cidr_block
  gateway_id             = var.route_nat_gateway
}

resource "aws_route" "route_endpoint" {
  count                  = var.route_endpoint_bool ? 1 : 0
  route_table_id         = aws_route_table.rtb.id
  destination_cidr_block = var.route_destination_cidr_block
  gateway_id             = var.route_endpoint
}

resource "aws_route" "route_peering" {
  count                  = var.route_peering_bool ? 1 : 0
  route_table_id         = aws_route_table.rtb.id
  destination_cidr_block = var.route_destination_cidr_block
  gateway_id             = var.route_peering
}



