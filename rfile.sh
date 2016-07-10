#!/usr/bin/env bash
exec < $1
while read line
do
  echo $line
done

exit 0
