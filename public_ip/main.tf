provider "aws" {
   region     = "eu-central-1"
   access_key = <YOUR_ACCESS_KEY>
   secret_key = <YOUR_SECRET_KEY>
}

resource "aws_instance" "ec2_example" {
   
   ami           = "ami-0767046d1677be5a0"
   instance_type = "t2.micro"
   subnet_id = aws_subnet.staging-subnet.id
   
   tags = {
           Name = "test - Terraform EC2"
   }
}
