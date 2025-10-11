		# To Display the IP Of The 2 EC2 Instances & The RDS Instance
		
				output "instance_1_ip_addr" {
				  value = aws_instance.webAppInstance1.public_ip
				}
				
				output "instance_2_ip_addr" {
				  value = aws_instance.webAppInstance2.public_ip
				}
				
				output "db_instance_addr" {
				  value = aws_db_instance.db_instance.address
}
