# Bastion
variable tags {
    type = map
    default = {
        "Owner" = "Sol Malisani"
    }
}

variable ami {
    type = string
    description = "id of the ami in the instance"
    default = "ami-2757f631"
}

variable instance_type {
    type = string
    description = "instance type"
    default = "t2.micro"
}

# Bastion Security Group
variable name_sg {
    type = string
    description = "Nombre del SG"
    default = "allow_ssh_anywhere"
}

variable name_description {
    type = string
    description = "Descripcion del SG"
    default = "Allow all inbound traffic to ssh"
}

variable vpc_id {
    type = string
    description = "Id de la VPC"
}

# Bastion Key Pair
variable aws_key_pair {
    type = string
    description = "Key Pair"
}