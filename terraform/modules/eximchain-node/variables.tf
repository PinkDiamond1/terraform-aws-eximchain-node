# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# You must provide a value for each of these parameters.
# ---------------------------------------------------------------------------------------------------------------------
variable "aws_region" {
  description = "AWS region to launch servers."
}

variable "availability_zone" {
  description = "AWS availability zone to launch the node in"
}

variable "lb_extra_az" {
  description = "Extra availability zone to put the load balancer in"
}

variable "aws_vpc" {
  description = "The VPC to place the node in"
}

variable "cert_owner" {
  description = "The OS user to be made the owner of the local copy of the vault certificates. Should usually be set to the user operating the tool."
}

# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# These parameters have reasonable defaults.
# ---------------------------------------------------------------------------------------------------------------------
variable "public_key_path" {
  description = "The path to the public key that will be used to SSH the instances in this region."
  default     = ""
}

variable "public_key" {
  description = "The public key that will be used to SSH the instances in this region. Will override public_key_path if set."
  default     = ""
}

variable "vault_dns" {
  description = "The dns that vault will be accessible on. Leave as default for a local vault."
  default     = "127.0.0.1"
}

variable "vault_cert_bucket" {
  description = "The name of the S3 bucket containing vault certificates. Leave empty if using a local vault."
  default     = ""
}

variable "vault_port" {
  description = "The port that vault will be accessible on."
  default     = 8200
}

variable "network_id" {
  description = "The network ID of the eximchain network to join"
  default     = 513
}

variable "node_volume_size" {
  description = "The size of the storage drive on the node"
  default     = 50
}

variable "force_destroy_s3_bucket" {
  description = "Whether or not to force destroy vault s3 bucket. Set to true for an easily destroyed test environment. DO NOT set to true for a production environment."
  default     = false
}

variable "rpc_cidrs" {
  description = "List of CIDR ranges to allow access to the RPC port."
  default     = []
}

variable "rpc_security_groups" {
  description = "List of security groups in the same region to allow access to the RPC port."
  default     = []
}

variable "eximchain_node_ami" {
  description = "ID of AMI to use for eximchain node. If not set, will retrieve the latest version from Eximchain."
  default     = ""
}

variable "eximchain_node_instance_type" {
  description = "The EC2 instance type to use for transaction executor nodes"
  default     = "t2.medium"
}

variable "cert_org_name" {
  description = "The organization to associate with the vault certificates."
  default     = "Example Co."
}

variable "base_subnet_cidr" {
  description = "The cidr range to use for subnets."
  default     = "10.0.0.0/16"
}

variable "consul_cluster_tag_key" {
  description = "consul tag key"
  default     = "eximchain-node-consul-key"
}

variable "consul_cluster_tag_value" {
  description = "consul tag value"
  default     = "auto-join"
}
