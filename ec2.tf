resource "aws_instance" "web" {
  ami           = var.AMI_ID
  instance_type = var.INSTANCE_TYPE
   monitoring = true
  ebs_optimized = true
  root_block_device {
  encrypted     = true
  }

  tags = {
    Name = "HelloWorld"
    env = "testing"
  }
}

resource "aws_instance" "app" {
  ami           = var.AMI_ID
  instance_type = var.INSTANCE_TYPE
   monitoring = true
  ebs_optimized = true
  root_block_device {
  encrypted     = true
  }

  tags = {
    env = "testing"
    Name = "AppServer"
  }
}