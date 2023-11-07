terraform {
  backend "s3" {
    bucket         = "yash-jenkins-bakend-bucke"
    key            = "main"
    region         = "ap-southeast-1"
    dynamodb_table = "yash-lock-dyna-db"
  }
}
