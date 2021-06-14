# We expect all resources to adhere to our tagging standard of providing a
# `Team` for the owning team name

# This is an example of a resource that correctly adheres to the standard
resource "aws_s3_bucket" "allowed" {
  bucket = "my-tutorial-bucket"
  acl    = "private"

  tags = {
    Team = "rocket"
  }
}
