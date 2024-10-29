variable "rtb_vpc" {
  description = "The VPC ID to use for this route table."
  type        = string
}

variable "rtb_tags" {
  description = "The tags for this route table."
  type        = map(string)
}

variable "route_internet_gateway_bool" {
  description = "Create route to Internet Gateway."
  type        = bool
  default     = false
}

variable "route_internet_gateway" {
  description = "The Internet Gateway ID. (Use only if route_internet_gateway_bool is TRUE.)"
  type        = string
  default     = null
}

variable "route_internet_gateway_destination_cidr_block" {
  description = "The destination CIDR block for Internet Gateway."
  type        = string
  default     = null
}


variable "route_nat_gateway_bool" {
  description = "Create route to NAT Gateway."
  type        = bool
  default     = false
}

variable "route_nat_gateway" {
  description = "The NAT Gateway ID. (Use only if route_nat_gateway is TRUE.)"
  type        = string
  default     = null
}

variable "route_nat_gateway_destination_cidr_block" {
  description = "The destination CIDR block for NAT Gateway."
  type        = string
  default     = null
}

variable "route_endpoint_bool" {
  description = "Create route to VPC Endpoint."
  type        = bool
  default     = false
}

variable "route_endpoint" {
  description = "The VPC Endpoint ID. (Use only if route_endpoint is TRUE.)"
  type        = string
  default     = null
}

variable "route_endpoint_destination_cidr_block" {
  description = "The destination CIDR block for Endpoint."
  type        = string
  default     = null
}

variable "route_peering_bool" {
  description = "Create route to VPC Peering."
  type        = bool
  default     = false
}

variable "route_peering" {
  description = "The VPC Peering ID. (Use only if route_peering is TRUE.)"
  type        = string
  default     = null
}

variable "route_vpc_peering_destination_cidr_block" {
  description = "The destination CIDR block for VPC Peering."
  type        = string
  default     = null
}
