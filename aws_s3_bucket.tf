locals {
  timestamp = "${timestamp()}"
  timestamp_sanitized = "${replace("${local.timestamp}", "/[- TZ:]/", "")}"

}

module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"

  bucket = "poc-s3-bucket-${var.s3_prefix}"
  acl    = "private"

server_side_encryption_configuration = {
    rule = {
      apply_server_side_encryption_by_default = {
        sse_algorithm = "AES256"
      }
    }
}
  versioning = {
    enabled = true
  }
  tags = {
    Terraform = "true"
    Environment = "dev"
    purpose = "PoC"
  }
}