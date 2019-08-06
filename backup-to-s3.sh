# ansible -i inventory.ini monitored_servers -m shell -a "mkdir ~/.aws"
# ansible -i inventory.ini monitored_servers -m shell -a "chmod 775 ~/.aws"
# ansible -i inventory.ini monitored_servers -m copy -a "src=/tmp/config dest=~/.aws/ mode=600 backup=yes"
# ansible -i inventory.ini monitored_servers -m copy -a "src=/tmp/credentials dest=~/.aws/ mode=600 backup=yes"

ansible -i inventory.ini tikv_servers -m shell -a "aws s3 sync {{deploy_dir}} s3://samsung-poc-backup/{{inventory_hostname}}/" -f 20
ansible -i inventory.ini pd_servers   -m shell -a "aws s3 sync {{deploy_dir}} s3://samsung-poc-backup/{{inventory_hostname}}/" -f 20
