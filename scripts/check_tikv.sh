#!/bin/bash
/home/qupeng/github.com/pingcap/tidb-ansible-large/resources/bin/pd-ctl store -d -u http://pd_server:50001 | egrep '(id|address|state_name)' | awk '{if(NR%3!=0)ORS=" "; else ORS="\n"}1' | sed 's/^[ \t]*//g'
