# Terraform configuration

module "s3_bucket" {
  source      = "../../modules/s3"
  #source     = "github.com/jakeasarus/terraform/s3_bucket"
  bucket_name = "nikunj-dev-04-jan-2022"
  bucket_acl  = "private"
  
  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
