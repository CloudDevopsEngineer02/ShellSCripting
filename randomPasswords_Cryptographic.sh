#!/bin/bash
  #This script generates list of random passwords
     #PASSWORD=${RANDOM}${RANDOM}${RANDOM}${RANDOM}
        #echo " $PASSWORD "

	   #Add the date and Time buitin parameters to get more complex password
#	      PASSWORD=$(date +%s%N)${RANDOM} | sha1sum
#	        # echo "$PASSWORD"

#		 PASSWORD256=$(date +%s%N)${RANDOM} | sha256sum
#		 #echo "$PASSWORD256"
#		 PASSWORD256=$(date +%s%N| sha256sum | head -c32)
		                 # echo "$PASSWORD256"
				#  PASSWORD256RANDOM=$(date +%s%N${RANDOM}${RANDOM}| sha256sum | head -c48 | echo "${CHAR}" )
				 #                                   echo "$PASSWORD256RANDOM"


			    SPECIAL_CHAR=(echo ' ~!@#$%^&*()_+= '| fold -w1 | shuf | head -c1)
				echo ${PASSWORD256RANDOM}${SPECIAL_CHAR}


				# 'shuf'command to Shuffle the charecters
				# 'fold' is to wrap the content
				# 

