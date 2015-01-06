/usr/local/bin/puppet apply \
  --environment dev \
  --verbose \
  --debug \
  --modulepath=puppet/modules:puppet/external-modules \
  puppet/manifests/nodes.pp

  