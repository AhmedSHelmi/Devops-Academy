resource "flexibleengine_networking_secgroup_v2" "devops-SG" {

  name = "devops-SG-helmi"

  description = "My neutron security group"

}



resource "flexibleengine_networking_secgroup_rule_v2" "secgroup_rule_1" {

  direction = "ingress"
  ethertype = "IPv4"
  protocol = "tcp"
  port_range_min = 22
  port_range_max = 22
  remote_ip_prefix = "0.0.0.0/0"
  security_group_id = flexibleengine_networking_secgroup_v2.devops-SG.id

}

resource "flexibleengine_networking_secgroup_rule_v2" "secgroup_rule_2" {

  direction = "ingress"
  ethertype = "IPv4"
  protocol = "tcp"
  port_range_min = 80
  port_range_max = 80
  remote_ip_prefix = "0.0.0.0/0"
  security_group_id = flexibleengine_networking_secgroup_v2.devops-SG.id

} 
