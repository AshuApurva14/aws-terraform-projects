resource "aws_instance" "web_server" {
    ami = "ami-02d26659fd82cf299"
    instance_type = var.instance_type
    vpc_security_group_ids = [aws_security_group.web_server_sg.id ]


    user_data = <<-EOF
              #!/bin/bash
              echo "Hello, World" > index.html
              nohup busybox httpd -f -p 8080 &
              EOF

    user_data_replace_on_change = true


    tags = {
      Name = "web-server"
      env = "dev"

    }
    

  
}