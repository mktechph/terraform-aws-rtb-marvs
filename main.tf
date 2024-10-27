resource "aws_route_table" "rtb" {
  vpc_id = var.rtb_vpc

  tags = var.rtb_tags
}
