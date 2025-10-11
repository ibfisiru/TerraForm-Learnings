# General Variables

	variable "region" {
		description = "The Region To Deploy These Resources"
		type = string 
		default ="us-east-1"
		}
		
	variable "app_name" {
	  description = "Name of the Web Application"
	  type        = string
	  default     = "web-app"
	}
	
	variable "environment_name" {
	  description = "Deployment environment (Staging/Production)"
	  type        = string
	  default     = "dev"
	}
		
	
	# EC2 Instance Variables
			
	variable "ami" {
		description = "Amazon machine image to use for ec2 Instances"
		type        = string
		default     = "ami-0360c520857e3138f" # // us-east-1
		}
			
	variable "instance_type" {
		description = "The EC2 Instance Type"
		type        = string
		default     = "t3.micro"
		}
			
	variable "instance1_name" {
		description = "The Name Of The EC2 Instance"
		type = string
		default = "webapp1"
	}

	variable "instance2_name" {
		description = "The Name Of The EC2 Instance"
		type = string
		default = "webapp2"
	}



	# S3 Bucket Variable
	
	variable "bucket_name" {
		description = "The Name Of The S3 Bucket"
		type = string
        		}
			
	
			
	# DB Variables
	
	variable "db_name" {
		description = "The Name Of The RDS Instance"
		type = string
       		}
	
	variable "db_user" {
		description = "The User Name For The Database"
		type        = string
				}
			
	variable "db_pass" {
		description = "The Password For The Database"
		type        = string
		sensitive   = true
}
