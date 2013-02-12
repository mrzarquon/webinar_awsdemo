#/bin/bash

puppet node_aws create --region=us-west-2 \
  --image ami-8a25a9ba \
  --keyname chrisbarker_pl_west2 \
  --type t1.micro \
  --security-g=gary_master 
