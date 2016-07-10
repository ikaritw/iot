#!/bin/bash
python lightoff.py
for x in $@
do
  case $x in
	1) echo $x
	   python n1.py
		;;
	2) echo $x
	   python n2.py
        	;;
	3) echo $x
	   python n3.py
		;;
	4) echo $x
	   python n4.py
		;;
	5) echo $x
	   python n5.py
		;;
	6) echo $x
	   python n6.py
		;;
  esac
done

