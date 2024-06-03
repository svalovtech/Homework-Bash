#!/bin/bash

function 1st() {

  useradd tim
  useradd brad
  useradd ann

  mkdir kaizen
  mkdir slava

  touch hello
  touch world
}
1st

function 2nd() {

  yum install -y wget httpd tree git
}
2nd

echo -e "1-function 1st\n2-function 2nd"

read -p "Please pick function: " function

 if [ $function -eq 1 ]
  then
1st
elif [ $function -eq 2 ]
  then
2nd
fi

