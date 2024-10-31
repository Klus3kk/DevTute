# Configure the AWS provider
provider "aws" {
  region = "us-east-1"  # Replace with your preferred region
  access_key = "<YOUR_ACCESS_KEY>"       # Replace with your AWS Access Key
  secret_key = "<YOUR_SECRET_KEY>"       # Replace with your AWS Secret Key
}

# Create an EC2 instance
resource "aws_instance" "devops_instance" {
  ami           = "ami-0c55b159cbfafe1f0"   # Replace with a suitable AMI ID for your region
  instance_type = "t2.micro"

  tags = {
    Name = "DevOpsInstance"
  }
}
