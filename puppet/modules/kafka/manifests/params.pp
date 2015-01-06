class kafka::params {

# #  $myArrayKafka = hiera('k_hostname_broker_id')
#   $myArrayKafka = ['104.236.173.36:0']
 
#   if $myArrayKafka.length < 1
#      raise Puppet::ParseError, ("There must be at least one kafka broker in hiera.yaml file")
#   end   

#   notify {"Running with \$myArrayKafka ${$myArrayKafka.length} length defined":}


#   $myArrayKafka.each do |$value|
#   $extractedValueHostName = split($value, ':')
#   # have to ensure the host we are installing on is correct.
#    if $extractedValueHostName[0] = $::ipaddress {
#      $extracted_host_name  = $extractedValueHostName[0]
#      $extracted_broker_id  = $extractedValueHostName[1]
#    }
#   end 
  
 # Only Install if the ipaddress match

  # read the collection of zookeeper server and assign to $coll_zookeeper

  #$extractedValueZHostName = split("104.236.176.134:1", ':')
  #$coll_zookeeper = $extractedValueZHostName[0]
 
  # todo read and apply the correct broker id and ip address

  #$extractedValueHostName = split("104.236.173.36:1", ':')
  
 

 # if $extractedValueHostName[0] == $::ipaddress {

  #$broker_id  = $extractedValueHostName[1]
  $datastore   = hiera('kafka:datastore', '/var/kafka')
  $package_dir = hiera('kafka:package_dir', '/var/lib/kafka')
  $package_url = 'http://s025w12l4548.s4.chp.cba/assets/kafka/kafka_2.10-0.8.1.1.tgz'
  $install_dir = hiera('kafka:install_dir', '/usr/local/kafka')
  $hostname    = $::ipaddress
  $hostname_port = '2181'
  $statsd_host = hiera('kafka:statsd_host', $::statsd_host)
  $statsd_port = hiera('kafka:statsd_port', $::statsd_port)

  # $myArrayZookeeper = hiera('kz_hostname_id')
 	
  #  if myArrayZookeeper.length < 1
  #    raise Puppet::ParseError, ("There must be at least one zookeeper broker in hiera.yaml file")
  #  end   

  # $myArrayZookeeper.each do |$zvalue|
  # $extractedZValueHostName = split($zvalue, ':')
  # # have to ensure the host we are installing on is correct.
  # $extracted_zookeer_host_name  = $extractedZValueHostName[0] + ':' + $hostname_port
  #    if length.myArrayZookeeper.length == 1 {
  #     $coll_zookeeper = $extracted_zookeer_host_name
  #    }
  #    else {
  #     $coll_zookeeper  = $extracted_zookeer_host_name + ',' + $coll_zookeeper
  #    }
  # end 
  # Read an array of zookeeper servers 

  $zookeeper_connect = hiera('kafka:zookeeper_connect', undef)

 }


