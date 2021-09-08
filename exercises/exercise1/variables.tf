variable "region" {
  type = string
}

variable "instance_type" {
  type = string
}
variable "key_name" {
  type = string
}

variable "availability_zones" {
  type = list(string)
}

variable "workstation_ip" {
  type    = list(string)
  default = ["121.200.7.106/32"]
}

variable "amis" {
  type = map(any)
  default = {
    "us-east-1" : "ami-029c64b3c205e6cce"
    "us-west-2" : "ami-031dea1a744251b51"
  }
}
