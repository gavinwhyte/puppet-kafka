class kafka::params {
  

  $myArrayKafka = hiera('k_hostname_broker_id')
  
  if $myArrayKafka.length < 1
     raise Puppet::ParseError, ("There must be at least one kafka broker in hiera.yaml file")
  end   

  notify {"Running with \$myArrayKafka ${$myArrayKafka.length} length defined":}


  $myArrayKafka.each do |$value|
  $extractedValueHostName = split($value, ':')
  # have to ensure the host we are installing on is correct.
   if $extractedValueHostName[0] = $::ipaddress {
     $extracted_host_name  = $extractedValueHostName[0]
     $extracted_broker_id  = $extractedValueHostName[1]
   }
  end 
  
  $broker_id  = $extracted_broker_id
  $datastore   = hiera('kafka:datastore', '/var/kafka')
  $package_dir = hiera('kafka:package_dir', '/var/lib/kafka')
  $package_url = 'http://mirror.symnds.com/software/Apache/kafka/0.8.1.1/kafka_2.10-0.8.1.1.tgz'
  $install_dir = hiera('kafka:install_dir', '/usr/local/kafka')
  $hostname    = $extracted_host_name
  $hostname_port = '2181'
  $statsd_host = hiera('kafka:statsd_host', $::statsd_host)
  $statsd_port = hiera('kafka:statsd_port', $::statsd_port)

  $myArrayZookeeper = hiera('kz_hostname_id')
 	
   if myArrayZookeeper.length < 1
     raise Puppet::ParseError, ("There must be at least one zookeeper broker in hiera.yaml file")
   end   

  $myArrayZookeeper.each do |$zvalue|
  $extractedZValueHostName = split($zvalue, ':')
  # have to ensure the host we are installing on is correct.
  $extracted_zookeer_host_name  = $extractedZValueHostName[0] + ':' + $hostname_port
     if length.myArrayZookeeper.length == 1 {
      $coll_zookeeper = $extracted_zookeer_host_name
     }
     else {
      $coll_zookeeper  = $extracted_zookeer_host_name + ',' + $coll_zookeeper
     }
  end 

  $zookeeper_connect = $coll_zookeeper
}
