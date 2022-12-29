#!/bin/bash

if [ -f "$1" ]; then
  argnum=$(( ( RANDOM % 10 )  + 1 ))
  touch expected.txt
  rm expected.txt
  touch expected.txt
  cmd_ab="./$1"
  randnums=""
  for (( c=1; c<=$argnum; c++ ))
  do
    x=$(( $RANDOM * -1 ))
    cmd_ab="${cmd_ab} $x"
    randnums="$randnums $x"
    d2h=`echo "ibase=10; obase=16; 2^32+$x"|bc`
    INPUT=`echo "${d2h^^}" | sed 's/^0X//'`
    LENGTH=`echo $INPUT | wc -c`
    echo "ibase=16; obase=2; $INPUT" | bc >> expected.txt 
  done
  touch result.txt
  rm result.txt
  touch result.txt
  $cmd_ab > result.txt
  ec="Files expected.txt and result.txt are identical"
  ac=$(diff -s expected.txt result.txt)
  if [[ "${ec}" == "${ac}" ]]; then
    echo "$2 passes"
  else
    echo "Random numbers: " $randnums
    echo "Command to test: " $cmd_ab
    echo "Expected binary representation: " 
    cat expected.txt
    echo "Actual binary representation  : " 
    cat result.txt
  fi
else
  echo "$1 does not exists. $2 fails"
fi
