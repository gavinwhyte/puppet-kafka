puppet apply \
  --environment dev \
  --verbose \
  --debug \
  --modulepath=puppet/modules:puppet/external-modules \
  --hiera_config=puppet/etc/hiera.yaml \
  puppet/manifests/nodes.pp