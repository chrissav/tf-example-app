module "ec2_cluster" {
  source                 = "terraform-aws-modules/ec2-instance/aws"
  version                = "~> 2.0"

  name                   = "my-cluster"
  instance_count         = 2

  ami                    = "ami-ebd02392"
  instance_type          = "t2.micro"
  key_name               = "christine-devops-oregon"
  monitoring             = true
  vpc_security_group_ids = ["sg-a4f289d4"]
  subnet_id              = "subnet-e7aeec9e"

  tags = {
    source   = "chrissav/tf-example-app"
    env = "dev"
  }
}
