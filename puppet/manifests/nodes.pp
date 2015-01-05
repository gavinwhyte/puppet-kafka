

node 's025wrtl2299.s4.chp.cba' {
   
   include java 

   class { 'kafka':
      broker_id => '0',
      hostname => $::ipaddress,
      zookeeper_connect => '10.39.3.96:2181'
    }
}

node 's025wrtl1802.s4.chp.cba' {
   
   include java 
   class { 'zookeeper':
        myid => '1'
    }
  
}


