#!/bin/bash
#This is script has been created to define the uniqueness of "CASE-STATEMENTS"
#Write a complex compare statement with IF and IFElseIF statements.

/#if [[ "${1}" = 'start' ]]
# then 
  #  echo 'STARTing.'
#elfi [[ "${1}" = 'stop' && "${1}" = 'STOP'  ]]
 #then
      echo "STOPing"
#elfi [[ "${1}" = 'status' && "" ]]
 # then
  #   echo "STATUS"
  #else 
   #  echo "The provided argument is invalid, please correct it " >&2
    # exit 1 

#fi

#!/bin/bash

case "${1}" in
  start|START)
    echo "STARTing."
    ;;
  stop|STOP)
    echo "STOPing"
    ;;
  STATUS|status)
    echo "STATUS"
else
     echo "Please enter the an valid input" > &2
     exit 1
    ;;
esac



#!/bin/bash
case "${1}" in
 start) echo "STARTing." ;;
 stop|STOP) echo "STOPing" ;;
 status|STAUTS|STATE|--state) echo "STATUS" ;;
 *) echo "Please provide a valid input" >&2; exit 1 ;;
 esac