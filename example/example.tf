provider "aws" {
  region = "us-east-1"
}

module "aws_user" {
     source = "../"
      name = "raj"
      path = "/system/"
}

module "permissions" {
      source = "../"
      name = "kamleshyadav"
      path = "/system/"
}


