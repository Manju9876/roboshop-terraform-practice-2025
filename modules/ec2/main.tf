resource "aws_instance" "instances" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids

  tags = {
    Name = var.tag_name
  }
}


# resource "aws_route53_record" "route53_records" {
#   zone_id = var.zone_id
#   name    = "${var.tag_name}-${var.env}"
#   type    = "A"
#   ttl     = 30
#   records = [aws_instance.instances.private_ip]
# }
