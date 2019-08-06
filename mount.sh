# for tikvs
# ansible -i inventory.ini tikv_servers -m shell -a "sudo mkdir /data1"
# ansible -i inventory.ini tikv_servers -m shell -a "sudo mkfs.ext4 /dev/nvme1n1"
# ansible -i inventory.ini tikv_servers -m shell -a "sudo mount /dev/nvme1n1 /data1 -o nodelalloc,noatime"
# ansible -i inventory.ini tikv_servers -m shell -a "sudo chown centos:centos /data1"
