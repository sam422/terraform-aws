resource "aws_instance" "bastion" {
  ami                         = "ami-087c17d1fe0178315"
  instance_type               = var.instance_type
  key_name                    = var.key_name
  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = [var.sg_id]
  associate_public_ip_address = true

  tags = {
    Name  = "Bastion"
    Owner = "CloudAcademy"
  }
}
