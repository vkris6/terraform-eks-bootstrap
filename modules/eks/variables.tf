variable "cluster_name" {}
variable "k8s_version" {
  default = "1.29"
}
variable "vpc_id" {}
variable "subnet_ids" {
  type = list(string)
}
variable "ssh_key_name" {}
variable "env" {
  default = "dev"
}
