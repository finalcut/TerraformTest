resource "virtualbox_vm" "node" {
    count = 1
    name = "${var.vm_name}"
    url = "https://cloud.centos.org/centos/7/vagrant/x86_64/images/CentOS-7-x86_64-Vagrant-1601_01.VirtualBox.box"
    image = "./virtualbox.box"
    cpus = 2
    memory = "512 mib",


     network_adapter {
       type = "bridged",
       host_interface="en0"
    }


}