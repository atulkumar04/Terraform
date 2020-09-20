provider "aws" {

    region = "ap-south-1"
    version = "~> 3.7"
}

resource "aws_s3_bucket" "my_s3_bucket"{

    bucket = "my-s3-bucket-atul-sharma-003"
    versioning {

        enabled = true
    }

}

resource "aws_iam_user" "my_iam_user" {

    name = "my_iam_user_abc_latest"
}

