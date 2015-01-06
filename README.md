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
Running Puppet 

Run puppet in sudo mode 

sudo bash/runpuppet 

take note of the changes that were made 

in /usr/local/bin/puppet apply \
  --environment dev \
  --verbose \
  --debug \
  --modulepath=puppet/modules:puppet/external-modules \
  puppet/manifests/nodes.pp

  I added /usr/local/bin to puppet apply 

  when running puppet in sudo mode, and if you query "which puppet"

  it refers to /usr/local/bin, its not in the path.

  hence 

  /usr/local/bin/puppet apply ....


# -------------------------------

Let's create a topic named "test" with a single partition and only one replica:

bin/kafka-topics.sh --create --zookeeper 104.236.176.134:2181 --replication-factor 1 --partitions 1 --topic test


We can now see that topic if we run the list topic command:
> bin/kafka-topics.sh --list --zookeeper ipaddress(of zookeeper)

Run the producer and then type a few messages into the console to send to the server.

> bin/kafka-console-producer.sh --broker-list ipaddress(kafka):9092 --topic test

Kafka also has a command line consumer that will dump out messages to standard output.
> bin/kafka-console-consumer.sh --zookeeper ipaddress(kafka):2181 --topic test --from-beginning


