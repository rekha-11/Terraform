#creating ec2 instance
resource "aws_instance" "web" {
  ami                    = var.image_id
  instance_type          = var.instance_type
  key_name               = aws_key_pair.key-tf.key_name
  vpc_security_group_ids = ["${aws_security_group.allow_tls.id}"]
  user_data              = file("${path.module}/script.sh")
  tags = {
    Name = "firstinstance"
  }

  provisioner "file" {
    source      = "readme.md" #terraform machine
    destination = "/tmp/readme.md" #remote machine
    connection {
      type = "ssh"
      user = "ubuntu"
      private_key = file("${path.module}/id_rsa")
      host = "${self.public_ip}"
    }
  }

}

