# Configue the ec2 resource
resource "aws_instance" "public-ec2"{
    ami="ami-006dcf34c09e50022"
    instance_type="t2.micro"
    subnet_id= aws_subnet.public_subnet.id
    tags = {
    Name = "public-ec2"  
  }
}
resource "aws_instance" "private-ec2"{
    ami="ami-006dcf34c09e50022"
    instance_type="t2.micro"
    subnet_id= aws_subnet.private_subnet.id
    tags = {
    Name = "private-ec2"  
  }
}
