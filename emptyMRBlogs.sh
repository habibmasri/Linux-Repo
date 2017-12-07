#!/bin/bash
truncate -s 0 ./logs/mxmarketrisk_service/mxmarketrisk_engine/mr_engine_0/service.log

rm ./logs/var/compute_fullreval*.time

for i in `ls ./logs/mxmarketrisk_service/mxmarketrisk_engine_mx/tasks*.log`; do rm $i; done

for i in `ls ./logs/mxmarketrisk_service/mxmarketrisk_engine_mx/marketrisk/*.log`; do rm $i; done
