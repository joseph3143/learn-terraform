module "sg" {
  source = "./sg"
}

module "ec2" {
  for_each = var.instances
  source = "./ec2"                                  ## Main Root Module
  component = each.value["name"]
  instance_type = each.value["type"]
  sg_id            = module.sg.sg_id
}

