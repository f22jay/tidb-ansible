# hosts=(tikv01 tikv02 tikv03 tikv04 tikv05 tikv06 tikv07 tikv08 tidb01 tidb02 tidb03 tidb04)
# for h in ${hosts[@]}; do
# 	scp -i ~/.ssh/tmp-samsung-poc.pem hosts centos@$h:~/
# 	ssh -i ~/.ssh/tmp-samsung-poc.pem centos@$h "sudo mv hosts /etc/hosts"
# done

# ansible -i inventory.ini monitored_servers -m shell -a "sudo bash -c 'echo 6553000 > /proc/sys/vm/max_map_count'"
# ansible -i inventory.ini monitored_servers -m shell -a "sudo bash -c 'echo 99 > /proc/sys/vm/overcommit_ratio'"
# ansible -i inventory.ini monitored_servers -m shell -a "sudo bash -c 'echo 2 > /proc/sys/vm/overcommit_memory'"
# ansible -i inventory.ini monitored_servers -m shell -a "sudo yum install java -y"
# ansible -i inventory.ini monitored_servers -m shell -a "sudo yum install mysql -y"
# ansible -i inventory.ini monitored_servers -m shell -a "sudo yum install bash-completion -y"
# ansible -i inventory.ini monitored_servers -m shell -a "sudo yum install epel-release -y"
# ansible -i inventory.ini monitored_servers -m shell -a "sudo yum install python-pip -y"
# ansible -i inventory.ini monitored_servers -m shell -a "sudo pip install awscli"
# ansible -i inventory.ini monitored_servers -m shell -a "sudo pip install --upgrade pip"

# ansible -i inventory.ini tikv_servers -m shell -a "rm {{deploy_dir}}/data/last_tikv.toml"
