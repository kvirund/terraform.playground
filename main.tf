provider "oci" {
	tenancy_ocid = var.tenancy_ocid
	user_ocid = var.user_ocid
	fingerprint = var.fingerprint
	private_key_path = var.private_key_path
	region = var.region
}

variable "deployment" {
	default = "dev"
}

locals {
	compartments_to_create = [ "${var.deployment}_admin", "${var.deployment}_admin", "${var.deployment}_business_logic", "${var.deployment}_business_logic" ]
}

data "oci_identity_compartments" "root" {
	compartment_id = var.tenancy_ocid

	access_level = "ACCESSIBLE"
}

data "oci_identity_availability_domains" "ads" {
	compartment_id = var.tenancy_ocid
}

resource "oci_identity_compartment" "compartments" {
	count = length(local.compartments_to_create)
	name = element(local.compartments_to_create, count.index)
	description = element(local.compartments_to_create, count.index)
}

output "compartments" {
	value = data.oci_identity_compartments.root.compartments
}

