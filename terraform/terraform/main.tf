
provider "aws" {
   region     = "eu-central-1"
   access_key = "xxxxxxxxxxxxxxxxxxxx"
   secret_key = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
}

resource "aws_instance" "ec2_example" {
    ami = "ami-053b12d3152c0cc71"  
    instance_type = "t2.micro" 
    subnet_id = "subnet-0d6d70a6bab80a54a"
    tags = {
        Name = "Terraform EC2"
    }
}

