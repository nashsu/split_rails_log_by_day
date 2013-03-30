
#get the date info from log file and process the format for csplit
grep "+0000" production.log | awk '{printf $8 " " ; print $9 }' | grep -e "^ $" -v | uniq | awk '{print "/"$0"/"}' | sed -e s/^/\'/ -e s/$/\'/ | tr '\n' ' ' 


#use previous output date info as  parameters, this command will generate xx** file  for each day
csplit -k production-6.log  ` use previous output as parameters `


#this will rename the split file
find . -name "xx*" -exec ./rename.sh {} \;