provider "aws" {
  region = "us-east-1"
}

data "aws_ami" "coreos_stable" {
  most_recent = true

  filter {
    name   = "name"
    values = ["CoreOS-stable-*"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  # CoreOS Official Account ID.
  owners = ["595879546273"]
}

resource "aws_instance" "sentry" {
  ami           = data.aws_ami.coreos_stable.id
  instance_type = "t2.micro"

  tags = {
    Name      = lookup(var.tags, "name", "")
    Project   = lookup(var.tags, "project_name", "")
    Env       = lookup(var.tags, "environment_name", "")
    Terraform = lookup(var.tags, "terraform", "true")
  }
}

