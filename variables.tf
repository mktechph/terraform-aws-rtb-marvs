variable "rtb_vpc" {
  description = "The VPC ID to use for this route table."
  type        = string
}

variable "rtb_tags" {
  description = "The tags for this route table."
  type        = map(string)
}