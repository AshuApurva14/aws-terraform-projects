resource "aws_security_group" "Linux_sg" {
  name        = "Linux-server-sg"
  description = "Allow access to server using SSH"
  vpc_id      = var.vpc_id

  ingress {
    description = "Allow SSH access from internet"
    from_port   = 22
    to_port     = 22
    protocol    = var.protocol
    cidr_blocks = var.cidr_blocks_ssh
  }
  egress {
    description = "Allow HTTP access from internet"
    from_port   = 80
    to_port     = 80
    protocol    = var.protocol
    cidr_blocks = var.cidr_blocks_http
  }

}
