output "PublicIP" {
      value="${aws_instance.myfirstvar.public_ip}"
}
output "PrivateIP" {
    value="${aws_instance.myfirstvar.private_ip}"
}
