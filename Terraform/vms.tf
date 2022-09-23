resource "flexibleengine_compute_instance_v2" "vm_instance" {
  name            = "terraform-helmi-instance"
  image_name        = "OBS CentOS 7.9"
  flavor_id       = "t2.micro"
  key_pair        = "helmi"
  security_groups = ["devops-SG-helmi"]

  network {
    uuid = flexibleengine_networking_network_v2.network_1_helmi.id
  }
}