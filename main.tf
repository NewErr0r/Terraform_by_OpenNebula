variable "one_endpoint" {}
variable "one_username" {}
variable "one_password" {}
variable "one_flow_endpoint" {}

provider "opennebula" {
  endpoint      = "${var.one_endpoint}"
  flow_endpoint = "${var.one_username}"
  username      = "${var.one_password}"
  password      = "${var.one_flow_endpoint}"
}

terraform {
  required_providers {
    opennebula = {
      source = "OpenNebula/opennebula"
      version = "0.5.1"
    }
  }
}

