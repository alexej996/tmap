# Tmap

This port scanner was orginally made by [Stevan Nestorovic](https://github.com/stevannestorovic) to work over clearnet.

It was modifed to work over Tor for anonymous scanning.

### Usage:
./tmap [-h] -H HOSTS [-p PORTS] [-t TIMEOUT] [--clearnet] [--torport TORPORT]


Multiple hosts can be specified using a comma (-H 1.1.1.1,2.2.2.2).

Ports can be either specified as a range (-p 20-100) or separated with a comma (-p 25,53,80).

### Dependencies
Tmap is a python script that requries a socks module and a running Tor deamon on localhost.
