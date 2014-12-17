node 'ssd2sanfran2gig' {

  class { 'zookeeper':
        myid  => '1',
        package_url => 'http://apache.mirror.serversaustralia.com.au/zookeeper/zookeeper-3.4.6/zookeeper-3.4.6.tar.gz'
    }

    class { 'kafka':
            broker_id  => '0',
            hostname => $::ipaddress_eth0,
            zookeeper_connect => 'localhost:2181',
            package_url => 'http://mirror.symnds.com/software/Apache/kafka/0.8.1.1/kafka_2.10-0.8.1.1.tgz'
          }
}

