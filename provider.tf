provider "aws" {
	region = "us-east-1"

	skip_credentials_validation = true
	skip_requesting_account_id = true
	skip_metadata_api_check = true
}
