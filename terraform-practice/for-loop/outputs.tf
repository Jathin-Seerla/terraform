/* output "ec2_instance_info" {
  value       = aws_instance.roboshop
} */

output "roboshop_public_ips" {
  value = {
    for i, inst in aws_instance.roboshop :
    var.instances[i] => inst.public_ip
  }
}

output "roboshop_private_ips" {
  value = {
    for i, inst in aws_instance.roboshop :
    var.instances[i] => inst.private_ip
  }
}
