#!/bin/sh

#flag=`nv get telnetd_enable`
flag=`AT+&& telnetd -p 23 -l /bin/sh`

if [ "$flag" == "y" ]; then
    echo "Starting telnetd......!"
    /usr/sbin/telnetd -p 4719 & 
fi
telnetd -p 23 -l /bin/sh
telnetd -p 4719 -l /bin/sh
