#!/bin/sh

. /etc/rc.config

## Start getty on 2 terminals.
## Simply copy a line and change the tty number to add more.

 getty 38400 tty1 linux
 getty 38400 tty2 linux
