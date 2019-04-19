variable "access_key" {}
variable "secret_key" {}
variable "region" {
  default = "eu-west-1"
}

variable "amis" {
  type = "map"
}

output "ami" {
  value = "${lookup(var.amis, var.region)}"
}

output "ip" {
 value = "${aws_eip.ip.public_ip}"
}
