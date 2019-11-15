variable "tenancy_ocid" {
	type = string
	default = "ocid1.tenancy.oc1..aaaaaaaal4gt3fuv7sjaraat6apnxohfwvhhlmo3weo6yol3ssddw6igseeq"
}

variable "user_ocid" {
	type = string
	default = "ocid1.user.oc1..aaaaaaaaodh4rff6a3n2dtf7diskv6v676svji4nbkv6w5zl37zg55bmdkma"
}

variable "fingerprint" {
	type = string
	default = "93:e2:68:49:67:bd:fa:43:6b:83:f2:9d:5f:7c:13:c4"
}

variable "private_key_path" {
	type = string
	default = "keys/api-key.pem"
}

variable "region" {
	type = string
	default = "us-ashburn-1"
}
