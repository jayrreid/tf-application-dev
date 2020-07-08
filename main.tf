

//--------------------------------------------------------------------
// Modules
module "microservices" {
  source  = "app.terraform.io/koinonia/microservices/aws"
  version = "2.0.0"

  eks_cluster_name = "${var.eks_cluster_name}"
  region = "${var.region}"
  vpc1_cidr = "${var.cidr}"
  vpc1_master_subnet_cidr = "${var.master_subnet_cidr}"
  vpc1_private_subnet_cidr = "${var.private_subnet_cidr}"
  vpc1_public_subnet_cidr = "${var.public_subnet_cidr}"
  vpc1_vpc_name = "${var.vpc_name}"
  vpc1_worker_subnet_cidr = "${var.worker_subnet_cidr}"
  gremlin_secret_teamID = "${var.gremlin_secret_teamID}"
  gremlin_secret_teamSecret = "${var.gremlin_secret_teamSecret}" 
}
