variable "amis" {
    default = {
        #configuracao localidade e distro
        "us-east-1-ubuntu20" = "ami-08d4ac5b634553e16"
    }
}

variable "instance_type" { 
    default = {
        #configuracao da maquina
        "micro" = "t2.micro"
    }
}