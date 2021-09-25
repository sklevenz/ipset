# ipset

Playing with IPSets in a Ubuntu docker container.

Works on OSX and Docker Desktop.

```
./run.sh # run a ubuntu docker container
```

In the container: Ping some IPs

```
./klaeff-ping.sh
./google-ping.sh
```

Ping should work for both IPs.

Configure an IPSet:

```
./config-on.sh
```

Ping to klaeff IP should be blocked.
Ping to  Google IP should not be blocked (even though it is on block_list).

```
./config-off.sh
```

No blocking anymore.
