provider "aws" {
  version = "~> 2.0"
  region  = "us-east-1"
}

terraform {
  required_version = ">= 0.12"
}

resource "null_resource" "list" {
  triggers = {
    timestamp = "${timestamp()}"
  }
  provisioner "local-exec" {
    command = "env"
    interpreter = ["sh", "-c"]
  }
}
