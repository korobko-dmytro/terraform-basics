variable "region" { default = "eu-west-1" }

variable "public_key_path" {
  description = "Enter the path to the SSH Public Key to add to AWS."
  default     = "/Users/dmytro_korobko/Documents/AWS/ec2-core-app.pem"
}

variable "key_name" {
  description = "Key name for SSHing into EC2"
  default     = "ec2-core-app"
}
