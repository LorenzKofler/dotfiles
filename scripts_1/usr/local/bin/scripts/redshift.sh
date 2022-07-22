#!/bin/bash
(pgrep -x redshift > /dev/null && killall redshift) || redshift -P -O 3000 & > /dev/null 
