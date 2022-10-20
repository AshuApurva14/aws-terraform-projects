resource "aws_instance" "server_for_new_app" {
  ami                    = var.ami_id
  instance_type          = var.instance_type_ns
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.jh_sg.id]
  iam_instance_profile   = aws_iam_instance_profile.app_profile.name


  tags = {
    name        = "Testing-Server"
    environment = "Testing"

  }


}
