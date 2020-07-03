#!/bin/bash

query=$1

execResult=$($interpreter -p "$query" 2>&1)
exitCode=${PIPESTATUS[0]}

result=$(if [ $exitCode = 0 ]; then echo $execResult; else echo "Error in JS"; fi)

cat << EOB
{
   "items": [
      {
         "type": "default",
         "title": "$(echo $result)",
         "arg": "$(echo $result)"
      }
   ]
}
