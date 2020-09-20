provider "aws" {

    region = "ap-south-1"
    version = "~> 3.7"
}

resource "aws_s3_bucket" "my_s3_bucket"{

    bucket = "my-s3-bucket-atul-sharma-002"
    versioning {

        enabled = true
    }

}

resource "aws_iam_user" "my_iam_user" {

    name = "my_iam_user_abc_updated"
}

output "my_s3_bucket_versioning" {

    value = aws_s3_bucket.my_s3_bucket.versioning[0].enabled
}

output "my_s3_bucket_complete_details" {

    value = aws_s3_bucket.my_s3_bucket.versioning
}

output "my_iam_user_complete_details" {

    value = aws_iam_user.my_iam_user
}