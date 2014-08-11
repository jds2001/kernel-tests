#!/bin/bash

if [ $EUID -eq 0 ] ; then
	echo -n "System Manufaturer: "
	/usr/sbin/dmidecode -s system-manufacturer
	echo -n "System Product Name: "
	/usr/sbin/dmidecode -s system-product-name
	echo -n "BIOS Version: "
	/usr/sbin/dmidecode -s bios-version
	echo -n "BIOS Release Date: "
	/usr/sbin/dmidecode -s bios-release-date
	echo -n "Processor: "
	/usr/sbin/dmidecode -s processor-version
else
	echo "Must be root to gather system info"
	exit 3
fi
