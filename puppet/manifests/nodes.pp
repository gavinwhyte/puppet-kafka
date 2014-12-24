node default {
}


node 'ssd2sanfran2gig' {
   
   include java 
   include zookeeper
  
}

node 'ssd1sanfran2gig' {
   
   include java 
   include kafka
}
