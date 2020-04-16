variable "s3_prefix" {
    default = "sample-dataset-2020"
  
}

variable "prefix" {
  default="sample-build"
}

/*
variable "poc_region" {
  
}

variable "poc_access_key" {

}
*/
variable "ssh_pub_key" {
  default="you-ssh-key-id_rsa.pub"
}


variable "instances_number" {
  default = 1
}