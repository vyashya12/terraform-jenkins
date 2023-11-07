terraform {
  backend "s3" {
    bucket  = "yash-jenkins-bakend-bucke"
    key     = "terraform-states"
    region  = "ap-southeast-1"
    encrypt = true
  }
}
