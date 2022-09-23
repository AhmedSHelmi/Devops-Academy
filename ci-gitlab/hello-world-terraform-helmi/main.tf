data "flexibleengine_networking_network_v2" "network_1" {
  name = "Devops-network"
}

resource "flexibleengine_compute_instance_v2" "instance_1" {

  name = "Devops-ECS-test"
  flavor_id = "t2.micro"
  key_pair = "GitLab-keypair"
  security_groups = ["default"]
  image_name = "OBS CentOS 7.9"

  network {
    uuid = data.flexibleengine_networking_network_v2.network_1.id
  }

}

 
