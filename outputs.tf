output "outputs_rtb_id" {
  value = aws_route_table.rtb.id
}

output "outputs_route_route_endpoint" {
  value = var.route_endpoint
}

output "outputs_route_route_nat_gateway" {
  value = var.route_nat_gateway
}

output "outputs_route_route_internet_gateway" {
  value = var.route_internet_gateway
}

output "outputs_route_route_peering" {
  value = var.route_peering
}