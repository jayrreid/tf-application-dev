//--------------------------------------------------------------------
// Variables
variable "region" {
  default = "us-west-2"
}

variable "eks_cluster_name" {
  description = "dev-cluster"
  default = "dev-cluster"
}

variable "gremlin_secret_teamID" {
  description = "gremlin_secret_teamID"
  default ="e61b3523-2466-5dcf-b601-b4a3f1eb8780"
}

variable "gremlin_secret_teamSecret" {
  description = "gremlin_secret_teamSecret"
  default ="21fa870a-5472-4aae-ba87-0a5472daae17"
}

variable "vpc_name" {
  default = "dev-vpc"
}

variable "cidr" {
  description = "The CIDR block for the VPC."
  default = "10.0.0.0/16"
}

#subnet variable
variable "master_subnet_cidr" {
  type        = list(string)
  description = "CIDR for master subnet"
  default     = ["10.0.48.0/20","10.0.64.0/20","10.0.80.0/20"]
}

variable "worker_subnet_cidr" {
  type        = list(string)
  description = "CIDR for worker subnet"
  default     = ["10.0.144.0/20", "10.0.160.0/20", "10.0.176.0/20"]
}

variable "public_subnet_cidr" {
  description = "Kubernetes Public CIDR"
  type        = list(string)
  default     = ["10.0.204.0/22", "10.0.208.0/22", "10.0.212.0/22"]
}

variable "private_subnet_cidr" {
  type        = list(string)
  description = "Kubernetes Private CIDR"
  default     = ["10.0.228.0/22", "10.0.232.0/22", "10.0.236.0/22"]
}
