module "ec2" {
  for_each = var.tag_name
  source   = "./modules/ec2"

  ami_id                    = each.value["ami_id"]
  env                    = var.env
  instance_type          = each.value["instance_type"]
  tag_name               = each.key
  zone_id                = var.zone_id
  vpc_security_group-ids = var.vpc_security_group_ids
}


