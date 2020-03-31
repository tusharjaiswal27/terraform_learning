provider "aws" {
    # alias   = "south"
    region  = "ap-south-1"
    access_key  = "aws_access_key"
    secret_key  = "aws_secret_key"
}

#Create EC2 instance with attaching single existing SG

resource "aws_instance" "apache-server"{
    
   
    ami = "ami-03b5297d565ef30a6"
    instance_type = "t2.micro"
    availability_zone ="ap-south-1b"
    
    user_data_base64 = "IyEvYmluL2Jhc2gNCg0KeXVtIHVwZGF0ZSAteQ0KeXVtIGluc3RhbGwgLXkgaHR0cGQNCg0KaW5zdGFuY2VJZD0kKGN1cmwgaHR0cDovLzE2OS4yNTQuMTY5LjI1NC9sYXRlc3QvbWV0YS1kYXRhL2luc3RhbmNlLWlkKQ0KZWNobyAiPGgxPkhlbGxvIFdvcmxkIGZyb20gJGluc3RhbmNlSWQ8L2gxPiIgPiAvdmFyL3d3dy9odG1sL2luZGV4Lmh0bWwNCg0Kc3lzdGVtY3RsIHN0YXJ0IGh0dHBkDQpzeXN0ZW1jdGwgZW5hYmxlIGh0dHBk"
    key_name = "ec2-key-name"
    
    tags = {
        name ="terraform-instance"
    }
    security_groups = ["my-security-group"]
}
