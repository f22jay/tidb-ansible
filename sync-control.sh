#!/usr/bin/env bash

cd ~ && rm -rf control-large.tar
cd ~ && tar cf control-large.tar control-large

hosts=(tidb02 tidb03 tidb04)
for h in ${hosts[@]}; do
	ssh -i ~/.ssh/tmp-samsung-poc.pem centos@$h "rm -rf control-large control-large.tar"
	scp -i ~/.ssh/tmp-samsung-poc.pem ~/control-large.tar centos@$h:~/
	ssh -i ~/.ssh/tmp-samsung-poc.pem centos@$h "tar xf control-large.tar"
done

