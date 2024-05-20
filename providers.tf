provider "aws" {
  region     = var.S3_REGION_KEY
  access_key = var.S3_ACCESS_KEY
  secret_key = var.S3_SECRET_KEY

  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true
  s3_use_path_style           = true

  endpoints {
    s3 = var.S3_ENDPOINT
  }
}
