resource "aws_instance" "test" {
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.allow_ssh_anywhere.id]
  key_name = var.aws_key_pair
  
  tags = var.tags 
}

resource "aws_security_group" "allow_ssh_anywhere" {
  name        = var.name_sg
  description = var.name_description
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = var.tags 
}
