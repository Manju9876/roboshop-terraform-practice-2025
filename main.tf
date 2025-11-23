module "ec2" {
  for_each = var.tag_name
  source   = "./modules/ec2"

  ami_id                 = each.value["ami_id"]
  env                    = var.env
  instance_type          = each.value["instance_type"]
  tag_name               = each.key
  zone_id                = var.zone_id
  vpc_security_group_ids = var.vpc_security_group_ids
}


module "route53" {
  for_each = var.tag_name
  source   = "./modules/route53"

  zone_id  = var.zone_id
  tag_name = each.key
  env      = var.env

  private_ip = module.ec2[each.key].private_ip
}