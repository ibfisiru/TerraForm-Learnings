		resource "aws_instance" "webAppInstance1" {
		          tags = {
		          Name = "var.instance1_name"
		                        }
			ami           = var.ami 
			instance_type = var.instance_type
			security_groups = [aws_security_group.instances.name]
			user_data       = <<-EOF
				#!/bin/bash
				echo "Hello, World 1" > index.html
				python3 -m http.server 8080 &
				EOF
					}
					
					
		resource "aws_instance" "webAppInstance2" {
		            tags = {
		             name = "var.instance2_name"
		                             }
			ami           = var.ami
			instance_type = var.instance_type
			security_groups = [aws_security_group.instances.name]
			user_data       = <<-EOF
				#!/bin/bash
				echo "Hello, World 2" > index.html
				python3 -m http.server 8080 &
				 EOF
}
