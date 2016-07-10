#!/bin/bash
# $1=min
# $2=max
# $3=filename
echo "ARGS:$@"

filename=$3
exec < $filename

echo $(date)
rowIndex=1
flag=0
while read line
do
  echo "check line:$rowIndex"
  x=$(echo $line|cut -d ',' -f 2)
  y=$(python -c "print($x>$1)")
  z=$(python -c "print($x<$2)")
  if [ "$y" == "True" ] && [ "$z" == "True" ]; then
    flag=$(( $flag + 1 ))
    echo $line|cut -d ',' -f 1,2,3
    if (( $flag > 3 )); then
      echo "Yes!!"
      exit 0
    fi
  fi
  rowIndex=$(( $rowIndex + 1 ))
done
echo "No......"
exit 1
echo $(date)
