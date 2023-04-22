# EC2 Instance
resource "aws_instance" "bastion" {
  ami                    = data.aws_ami.amzlinux2.id
  instance_type          = "t2.micro"
  #user_data              = file("${path.module}/bastion-user-data/bastion-host-user-data.sh")
  key_name               = "jenkins-key"
  vpc_security_group_ids = [aws_security_group.ssh_http_sg.id]
  

  subnet_id = data.aws_subnet.private_subnet.id   # or you can go to your vpc in awc and get vpc id there eg: vpc-09c5216cfee99aa7a

  tags = {                        # private  subnet mean no public ip . 
    "Name" = "ec2-private"
  }
}





