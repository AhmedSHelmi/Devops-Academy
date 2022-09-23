resource "flexibleengine_vpc_eip_v1" "eip_1" { 

 publicip { 

  type = "5_bgp" 

 } 

 bandwidth { 

  name = "helmi-eip" 

  size = 8 

  share_type = "PER" 

  charge_mode = "traffic" 

 } 

} 

 

resource "flexibleengine_compute_floatingip_associate_v2" "fip_1" { 

 floating_ip = flexibleengine_vpc_eip_v1.eip_1.publicip.0.ip_address 
 instance_id = flexibleengine_compute_instance_v2.vm_instance.id 

} 