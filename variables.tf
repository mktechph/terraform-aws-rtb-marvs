variable "rtb_vpc" {
  description = "The VPC ID to use for this route table."
  type        = string
}

variable "rtb_tags" {
  description = "The tags for this route table."
  type        = map(string)
}

variable "route_destination_cidr_block" {
  description = "The destination CIDR block of this route."
  type        = string
}

variable "route_internet_gateway_bool" {
  description = "Create route to Internet Gateway."
  type        = bool
}

variable "route_internet_gateway" {
  description = "The Internet Gateway ID."
  type        = string
}


variable "route_nat_gateway_bool" {
  description = "Create route to NAT Gateway."
  type        = bool
}

variable "route_nat_gateway" {
  description = "The NAT Gateway ID."
  type        = string
}

variable "route_endpoint_bool" {
  description = "Create route to VPC Endpoint."
  type        = bool
}

variable "route_endpoint" {
  description = "The VPC Endpoint ID."
  type        = string
}

variable "route_peering_bool" {
  description = "Create route to VPC Peering."
  type        = bool
}

variable "route_peering" {
  description = "The VPC Peering ID."
  type        = string
}
