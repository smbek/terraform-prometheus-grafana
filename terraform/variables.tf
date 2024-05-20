variable "region" {
  type        = string
  description = "Provide region"
}

variable "vpc_cidr" {
  type        = string
  description = "Provide VPC cidr block"
}

variable "sub1_cidr" {
  type        = string
  description = "Provide subnet 1 cidr block"
}

variable "sub2_cidr" {
  type        = string
  description = "Provide subnet 2 cidr block"
}

variable "sub3_cidr" {
  type        = string
  description = "Provide subnet 3 cidr block"
}

variable "ip_on_launch" {
  type = bool
}

variable "instance_type" {
  type        = string
  description = "Provide instance type"
}