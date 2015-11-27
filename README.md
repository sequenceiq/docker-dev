dev-docker
==========

Development docker image with preinstalled hammers and screwdrivers. 

To run container use the commend below:
```
docker run --rm --net=host --pid=host --privileged -it sequenceiq/dev:centos
```

Monitoring tools:
 * tcpdump
 * traceroute
 * speedtest_cli
 * iperf
 * iostat
 * pidstat
 
Utilities:
 * curl
 * which
 * tar
 * rsync
 * bunzip2
 
SSH:
 * Openssh server
 * Openssh client
 
Java:
 * Oracle JDK 7u51
 * Maven 3.3.9
