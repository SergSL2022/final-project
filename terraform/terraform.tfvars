# AWS account config
region = "eu-north-1"

# General for all infrastructure
# This is the name prefix for all infra components
name = "slipchuk-cluster"


vpc_id      = "vpc-0f4ea436a49b06c61"
subnets_ids = ["subnet-02c02c42d8ef6140f", "subnet-02f52ccdae23d1525", "subnet-00bd4adee8e9b9dd0"]

tags = {
  Environment = "test"
  TfControl   = "true"
}

zone_name = ""