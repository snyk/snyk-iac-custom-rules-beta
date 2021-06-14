package main

# generated using `conftest parse s3_tagging_failing.tf`
invalid := {"resource": {"aws_s3_bucket": {"denied_1": {"acl": "private", "bucket": "my-tutorial-bucket"}, "denied_2": {"acl": "private", "bucket": "my-tutorial-bucket", "tags": {"owning_team": "abc-123"}}}}}

test_incorrect_tags {
	deny with input as invalid
}
