# Tmap

This port scanner was orginally made by [Stevan Nestorovic](https://github.com/stevannestorovic) to work over clearnet.

It was modifed to work over Tor for anonymous scanning.

### Dependencies
Tmap is a python script that requries a socks module and a running Tor deamon on localhost.

### Usage:
./tmap [-h] -H HOSTS [-p PORTS] [-t TIMEOUT] [--clearnet] [--torport TORPORT]


Multiple hosts can be specified using a comma (-H 1.1.1.1,2.2.2.2).

Ports can be either specified as a range (-p 20-100) or separated with a comma (-p 25,53,80).


### Examples

`./tmap -H 1.1.1.1 -p 53,80`

Scans ports 53 and 80 on 1.1.1.1

`./tmap -H facebookcorewwwi.onion -p 80`

Scan port 80 on facebookcorewwwi.onion

`./tmap -H 192.168.0.1 -p 0-1024 --clearnet`

Scan ports from 0 to 1024 on 192.168.0.1 without routing traffic through Tor.
