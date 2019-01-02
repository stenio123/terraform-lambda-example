# ---------------------------------------------------------------------------------------------------------------------
# ENVIRONMENT VARIABLES
# Define these secrets as environment variables
# ---------------------------------------------------------------------------------------------------------------------

# AWS_ACCESS_KEY_ID
# AWS_SECRET_ACCESS_KEY
# AWS_DEFAULT_REGION

# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# You must provide a value for each of these parameters.
# ---------------------------------------------------------------------------------------------------------------------

variable "s3_bucket_name" {
  description = "S3 bucket containing the zipped Lambda function"
  default = "YOUR-BUCKET-NAME"
}

variable "file_name" {
  description = "File name of zipped Lambda function"
  default = "FILE-NAME"
}

variable "function_name" {
  description = "File name of zipped Lambda function"
  default = "FUNCTION-NAME"
}
variable "handler" {
  description = "Function entry point"
  default = "HANDLER"
}

variable "runtime" {
  description = "Runtime to run this Lambda"
  default = "RUNTIME"
}

# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# 
# ---------------------------------------------------------------------------------------------------------------------

variable "environment_vars" {
  description = "Environment variables"
  default = {foo = "bar", fozz = "bazz"}
}
variable "log_retention_in_days" {
    description = "Number of days to keep Cloudwatch logs for this function"
    default = 14
}
