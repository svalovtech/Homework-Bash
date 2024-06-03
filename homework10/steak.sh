#!/bin/bash

read -p "Please input meet temperature: " t

  if [ $t -ge 120 ] && [ $t -le 130 ]

then
  echo " rare "

  elif [ $t -ge 131 ] && [ $t -le 140 ]

then
echo " medium rare "

  elif [ $t -ge 141 ] && [ $t -le 150 ]

then
echo " medium "

  elif [ $t -ge 151 ] && [ $t -le 160 ]

then
echo " medium well "

  elif [ $t -ge 161 ] && [ $t -le 170 ]

then
echo " well done "
fi
