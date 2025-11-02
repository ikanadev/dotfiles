#!/bin/bash
current=$(setxkbmap -query | grep layout)
current=${current: -2}
if [[ $current == "us" ]]
then
  setxkbmap es
else
  setxkbmap us
fi
