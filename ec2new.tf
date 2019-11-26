provider "aws" {
  access_key	= "AKIA36UX5RXWTHNPFFQR"
  secret_key	= "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"
  region = "us-east-1"
}
resource "aws_instance" "MyTest" {
  ami           = "ami-00eb20669e0990cb4"
  instance_type = "t2.micro"
  key_name = "jen_key"
  security_groups = [ "Jenkins_SG" ]
  
  tags = {
    terraform = "true"
    env       = "Dev"
    Name      = "My First Server"
  }
  root_block_device  {
      volume_type = "gp2"
      volume_size = 25
  }
}
