mv $1 `grep "+0000" $1 | head -n 1 | awk '{ printf $12 "-"; printf $8 "-" ; print $9 }' | sed -e s/Jan/1/ -e s/Feb/2/ -e s/Mar/3/ -e s/$/\.log/`
