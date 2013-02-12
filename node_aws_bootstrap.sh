#!/bin/bash

puppet node_aws bootstrap --region=us-west-2 \
  --image ami-8a25a9ba \
  --login root --keyfile /root/.ssh/aws-key.pem \
  --keyname chrisbarker_pl_west2 \
  --type t1.micro \
  --enc-server=127.0.0.1 \
  --enc-auth-user=admin@puppetlabs.com \
  --enc-auth-pass=########## \
  --enc-port=443 \
  --enc-ssl \
  --node-group "apache" \
  --security-g=gary_master \
  --install-script=puppet-enterprise \
  --tags name='cbarker webinar' \
  --installer-answers=/root/puppet-enterprise-2.7.1-el-6-x86_64/client-answers.txt \
  --installer-payload=/root/puppet-enterprise-2.7.1-el-6-x86_64.tar.gz
