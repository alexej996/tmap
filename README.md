# Tmap

This port scanner was orginally made by [Stevan Nestorovic](https://github.com/stevannestorovic) to work over clearnet.

It was modifed to work over **Tor** for anonymous and hidden service scanning.

### Dependencies
Tmap is a python script that requries the **socks** module and a running Tor deamon on localhost.

Both **python2** and **pyhton3** are supported.

### Usage:
`./tmap [-h] -H HOSTS [-p PORTS] [-t TIMEOUT] [--clearnet] [--torport TORPORT]`


`-H` option can be used to specify hosts, but it is assumed by default.

Multiple hosts can be specified using a comma (ex. `./tmap -H 1.1.1.1,google.com,facebookcorewwwi.onion -p 80`).

Tmap supports IP address ranges as well (ex. `./tmap 192.168.1.0/24 -p 22`).

**For private addresses, Tor is _not_ used, but a _direct_ connection is established instead.**

Ports can be specified as a range (ex. `./tmap google.com -p 20-30`),separated with a comma (ex. `./tmap 1.1.1.1 -p 25,53,80`) or both.

Ports in a range are scanned including the ends of an interval (ex. in a range "20-30" both port 20 and 30 are scanned).

### Examples

`./tmap -H 1.1.1.1 -p 53,80`

Scans ports 53 and 80 on 1.1.1.1

`./tmap -H facebookcorewwwi.onion -p 80`

Scan port 80 on facebookcorewwwi.onion

`./tmap -H 192.168.0.1 -p 0-1024 --clearnet`

Scan ports from 0 to 1024 on 192.168.0.1 without routing traffic through Tor.

`./tmap 192.168.1.0/24 -p 80`

Scan the whole 192.168.1.0/24 range for an open port 80 without Tor.

`./tmap 8.8.8.8/31 -p 53`

Scan the 8.8.8.8/31 range for an open port 53 with Tor.

### License
**GPLv3+**: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>

This is *free* software: you are free to change and redistribute it.

There is **NO WARRANTY**, to the extent permitted by law.
