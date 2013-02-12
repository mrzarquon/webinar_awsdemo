#!/bin/bash

puppet node install \
  --login root --keyfile=/root/.ssh/aws-key.pem \
  --install-script=puppet-enterprise \
  --installer-answers=/root/puppet-enterprise-2.7.1-el-6-x86_64/client-answers.txt \
  --installer-payload=/root/puppet-enterprise-2.7.1-el-6-x86_64.tar.gz \
$1
