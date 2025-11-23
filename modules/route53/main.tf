resource "aws_route53_record" "route53_records" {
  zone_id = var.zone_id
  name    = "${var.tag_name}-${var.env}"
  type    = "A"
  ttl     = 30
  records = [var.private_ip]
}
