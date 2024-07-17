terraform {
  backend "s3" {
    bucket         = "terraform-state-danit-devops-2"
    key            = "slipchuk/step-project-final.tfstate"
    encrypt        = true
    dynamodb_table = "lock-tf-slipchuk-eks"
    # dynamo key LockID
    # Params tekan from -backend-config when terraform init
    region = "eu-central-1"
    #profile = 
  }
}
