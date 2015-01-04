### This s a test zookeeper branch ###

Zookeeper 


### bundler requires ###

gem install bundler 

### bundle install gems 

bundle install 


### bundle exec to install external modules ###
bundle exec librarian-puppet update

### Currently testing on 2 machines 

# --------------------------------

ssd1sanfran2gig

ip address 104.236.173.36

Kafka 

# -------------------------------

ssd2sanfran2gig

ipaddress 104.236.176.134

Zookeeper

# -------------------------------

Let's create a topic named "test" with a single partition and only one replica:

bin/kafka-topics.sh --create --zookeeper 104.236.176.134:2181 --replication-factor 1 --partitions 1 --topic test


We can now see that topic if we run the list topic command:
> bin/kafka-topics.sh --list --zookeeper 104.236.176.134:2181

Run the producer and then type a few messages into the console to send to the server.

> bin/kafka-console-producer.sh --broker-list 104.236.173.36:9092 --topic test

Kafka also has a command line consumer that will dump out messages to standard output.
> bin/kafka-console-consumer.sh --zookeeper 104.236.176.134:2181 --topic test --from-beginning


