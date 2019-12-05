#!/bin/bash
  #This script generates list of random passwords
     #PASSWORD=${RANDOM}${RANDOM}${RANDOM}${RANDOM}
        #echo " $PASSWORD "

	   #Add the date and Time buitin parameters to get more complex password
	      PASSWORD=$(date +%s%N)${RANDOM}
	         echo "$PASSWORD"
