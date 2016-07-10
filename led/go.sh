#!/usr/bin/env bash
# Jazz

for x in $(seq 1 1000)
do
  python lightoff.py
  case $(($x % 6)) in 
  1)
    python n1.py
    ;;
  2)
    python n2.py
    ;;
  3)
    python n3.py
    ;;
  4)
    python n4.py
    ;;
  5)
    python n5.py
    ;;
  0)
    python n6.py
    ;;
  esac
done

python lightoff.py

exit 0
