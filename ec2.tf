resource "aws_instance" "ec2-one" {
  ami = "ami-0e8a34246278c21e4"
  vpc_security_group_ids = [aws_security_group.ec2.id]
  subnet_id = aws_subnet.public_subnet1.id
# key_name = ""
  instance_type = "t2.micro"
  tags = {
    Name = "webserver=1"
  }
}

resource "aws_instance" "ec2-two" {
  ami = "ami-0e8a34246278c21e4"
  vpc_security_group_ids = [aws_security_group.ec2.id]
  subnet_id = aws_subnet.public_subnet2.id
# key_name = ""
  instance_type = "t2.micro"
  tags = {
    Name ="webserver-2"
  }
}