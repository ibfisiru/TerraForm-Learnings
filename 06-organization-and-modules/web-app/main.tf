# This file will be used to run the modules in the 'web-app-module' directory.
# In this example, 2 web apps will be deployed with 2 sets of inputs for demo purposes.

    terraform {
				backend "s3" {
			       	bucket         = "fphn-terraform-state" # BUCKET NAME
			    	key            = "webApp/import-bootstrap/terraform.tfstate"
			    	region         = "us-east-1"
			    	dynamodb_table = "terraform-state-locking"
				   	encrypt        = true
					   }
				
			    required_providers {
					 aws = {
						source  = "hashicorp/aws"
						version = "~> 3.0"
							}
						}
					}
									
				provider "aws" {
					region = "us-east-1"
					}
					
			variable "db_pass_1" {
			  description = "password for database #1"
			  type        = string
			  sensitive   = true
			}
					
			variable "db_pass_2" {
			  description = "password for database #2"
			  type        = string
			  sensitive   = true
			}
					
			module "webapp1" {
			  source = "...../8) WebAppModule"
					
			  # Input Variables
			  bucket_name    = "webapp1bucket"
			  app_name         = "web-app-1"
			  environment_name = "staging"
			  instance_type    = "t3.micro"
			  db_name          = "webapp1db"
			  db_user          = "web1user"
			  db_pass          = var.db_pass_1
			}
					
			module "webapp2" {
			   source = "...../8) WebAppModule"
			
			 # Input Variables
			  bucket_name    = "webapp2bucket"
			  app_name         = "web-app-2"
			  environment_name = "production"
			  instance_type    = "t3.micro"
			  db_name          = "webapp2db"
			  db_user          = "web2user"
			  db_pass          = var.db_pass_2
}
