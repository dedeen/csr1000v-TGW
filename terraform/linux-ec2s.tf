#  Terraform to create end user EC2s 

resource "aws_instance" "linux1_104_az1" {
  ami                                 = "ami-094125af156557ca2"
  instance_type                       = "t2.micro"
  key_name                            = "bastion-keypair"
  associate_public_ip_address         = false
  private_ip                          = "10.104.1.20"
  subnet_id                           = module.vpc["vpc104"].intra_subnets[1]
  vpc_security_group_ids              = [aws_security_group.SG-allow_ipv4["vpc104"].id]  
  source_dest_check                   = true
  tags = {
          Owner = "dan-via-terraform"
          Name  = "linux1_104_az1"
    }
}

resource "aws_instance" "linux2_104_az2" {
  ami                                 = "ami-094125af156557ca2"
  instance_type                       = "t2.micro"
  key_name                            = "bastion-keypair"
  associate_public_ip_address         = false
  private_ip                          = "10.104.129.20"
  subnet_id                           = module.vpc["vpc104"].intra_subnets[3]
  vpc_security_group_ids              = [aws_security_group.SG-allow_ipv4["vpc104"].id]  
  source_dest_check                   = true
  tags = {
          Owner = "dan-via-terraform"
          Name  = "linux2_104_az2"
    }
}
