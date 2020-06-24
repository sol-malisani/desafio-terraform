# Provider
provider "aws" {
  profile = "dinocloud"
  region  = "us-east-1"
}

# Modulos
module bastion {
    source = "../modules/bastion"
    vpc_id = module.networking.vpc_id
    aws_key_pair = aws_key_pair.keypair.id
}

module networking {
    source = "../modules/networking"
    name_preffix = "sol_malisani_desafio"
    availability_zones = ["us-east-1a", "us-east-1b"]
}

# Key Pair
resource "aws_key_pair" "keypair" {
  key_name   = "desafio-sol-keypair"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDpKfrqQaoT7byyFARdNEWFWR4YwTepCHWfYyCP94JgD/9R3IBTyIrMEaAk44IKBSr4XdPv2Ai1QasEbPNVYUpjsdd6YfY+k72SVU4uIWfGWkSMmj0rs4jCtwAsxG7MtwCe1k33HVb1Xbs0ZYHhL3Dj5wkENsOxu9zqg/Olr6fwGtFgZPjwYR7IXF7pTJo8PZMikljC3XfvtCzjE1NMqJcT2vimUXfC/rNlmSTsNEpU1bPFo1uUHE5EtG4Um4Tp0KYFMt7uWhFwxLAtNTsXHX++554KqEUVd5gB2SWKI15UyWMY6QBQDNiJAVVHHEx/PV3feoDliVkDMHTOvROugLgy6Fz3G35DqXnxfvBFz/oMZNQGLaYSP2QPXv/98F8Hlu3qJimNmtCTqFrgpJrRllgnKCeCci3krU7UmFiSnIQ+Pekp4mIzoNU6Q30BP4V0rVUS157vnb4Ta1ys0Pr9n9CX9Rl4kBly4zoEKRH068jjx8Xq2+6/fmo33834ihyg72Q8g5N5Zy8PDldBXEDly3qWrQp+svnbz/ItvuybmhSeL2TeRFLA4xmRhKNJUKKkw/0vS3XJEgBRD1CZdQMG55Ip8JlfPh4k7X3q8NnbKcXZYaAmD21J4XkwnnnII6n4v/B+QRUXJz0UUj3C0Q2nvCVxwEcLndvuadlJ2cHyYi5/vQ== sol.malisani@dinocloudconsulting.com"
}