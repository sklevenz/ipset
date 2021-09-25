# ipset

Playing with IPSets in a Ubuntu docker container.

Works on OSX.

´´´´
./run.sh # run a ubuntu docker container
´´´´

In the container: Ping some IPs

´´´´
./klaeff-ping.sh
./google-ping.sh
´´´´
This should work.

Configure an IPSet:

´´´´
./config-on.sh
´´´´

The klaeff IP should be blocked.
The Google IP should not be blocked (even though it is on block_list).

´´´´
./config-off.sh
´´´´

Nothing is blocked.
