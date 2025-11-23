module "ec2" {
  for_each = var.tag_name
  source   = "./modules/ec2"

  ami                    = each.value["ami-id"]
  env                    = var.env
  instance_type          = each.value["instace_type"]
  tag_name               = each.key
  zone_id                = var.zone_id
  vpc_security_group-ids = var.vpc_security_group-ids
}


