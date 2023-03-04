% TMAP(1) tmap 1.3.2
% Aleksej Jocic
% March 2023

# NAME
tmap - Simple stateful port scanner that works over Tor

# SYNOPSIS
**tmap** *HOST*
**tmap** *HOST* [OPTIONS]\

# DESCRIPTION
Simple stateful port scanner that works over Tor

# OPTIONS
*HOST* : IP address or domain to scan
-h, --help : show this help message and exit
--version : print version information and exit
-H HOSTS, --hosts HOSTS : IP address or domain to scan
-p PORTS, --ports PORTS : ports to scan, seperated by a comma
-t TIMEOUT, --timeout TIMEOUT : seconds to wait before connection timeout for each port
--clearnet : don't use Tor for scanning, connect directly instead
--banner : print data received from open ports
--torport TORPORT : port on which Tor is listening on
-j JOBS, --jobs JOBS : maximum number of open connections at the same time
--output OUTFILE : write scan results to output file

# EXAMPLES
`./tmap -H 1.1.1.1 -p 53,80`

Scans ports 53 and 80 on 1.1.1.1

`./tmap -H facebookcorewwwi.onion -p 80`

Scan port 80 on facebookcorewwwi.onion

`./tmap -H 192.168.0.1 -p 0-1024 --clearnet`

Scan ports from 0 to 1024 on 192.168.0.1 without routing traffic through Tor.

`./tmap 192.168.1.0/24,google.com -p 80`

Scan the whole 192.168.1.0/24 range for an open port 80 without Tor and goole.com with Tor.

`./tmap 8.8.8.8/31 -p 53`

Scan the 8.8.8.8/31 range for an open port 53 with Tor.

# AUTHORS
Stevan Nestorovic wrote the first version of the program
Aleksej Jocic rewrote it and added more features

# COPYRIGHT
**GPLv3+**: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>
This is *free* software: you are free to change and redistribute it.
There is **NO WARRANTY**, to the extent permitted by law.

