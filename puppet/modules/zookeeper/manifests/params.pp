class zookeeper::params {

 # $myArrayZookeeper = hiera('kz_hostname_id')
 # $myArrayZookeepers = ["104.236.176.134:1"]
 # Note Zookeeper broker ID starts with 1
 #define server_broker_id {

    #  $extractedValueZHostName = split("104.236.176.134:1", ':')

    #if $extractedValueZHostName[0] == $::ipaddress {

     # $extracted_Zhost_name  = $extractedValueZHostName[0]
     # $extracted_Zbroker_id  = $extractedValueZHostName[1]

      $myid        = hiera('zookeeper:myid', undef)
      $datastore   = hiera('zookeeper:datastore', '/var/zookeeper')
      $package_dir = '/var/lib/zookeeper'
      $package_url = 'http://s025w12l4548.s4.chp.cba/assets/kafka/zookeeper-3.4.6.tar.gz'
      $client_port = hiera('client_port', 2181)
      $snap_count  = hiera('snap_count', 10000)
      $log_dir     = hiera('log_dir', '/var/log/zookeeper')
      $install_dir = hiera('install_dir', '/usr/local/zookeeper')
      $cfg_dir     = hiera('cfg_dir', "${install_dir}/zookeeper/conf")
      $cfg_file    = hiera('cfg_file', "${cfg_dir}/zoo.cfg")
      $user        = hiera('user', 'zookeeper')
      $group       = hiera('group', 'zookeeper')
      $java_bin    = hiera('java_bin', '/usr/bin/java')
      $java_opts   = hiera('java_opts', '')
      $pid_dir     = hiera('pid_dir', '/var/run/zookeeper')
      $pid_file    = hiera('pid_file', '$PIDDIR/zookeeper.pid')
      $zoo_main    = hiera('zoo_main', 'org.apache.zookeeper.server.quorum.QuorumPeerMain')
      $lo4j_prop   = hiera('log4j_prop', 'INFO,ROLLINGFILE')


      $servers     = $::ipaddress

      $snapRetainCount = hiera('zookeeper:snapRetainCount', 3)
      # interval in hours, purging enabled when >= 1
      $purgeInterval   = hiera('zookeeper:purgeInterval', 0)

      # log4j properties
      $rollingfile_threshold = hiera('rollingfile_threshold', 'ERROR')
      $tracefile_threshold    = hiera('tracefile_threshold', 'TRACE')

   # }
  #}
   
  #server_broker_id { $myArrayZookeepers:; }

}