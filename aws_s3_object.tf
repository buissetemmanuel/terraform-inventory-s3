resource "aws_s3_object" "object1" {
  bucket = "default"
  key    = "new_object_key1"
  source = "./test_bucket_object.txt"

  # The filemd5() function is available in Terraform 0.11.12 and later
  # For Terraform 0.11.11 and earlier, use the md5() function and the file() function:
  # etag = "${md5(file("path/to/file"))}"
  etag = filemd5("./test_bucket_object.txt")
}
