#!/bin/bash

# DO NOT EDIT!

echo "*************************************"
echo "*** Pulling Code Challenge $1 $2***"
echo "*************************************"

motive () {
  echo "Motiviation Quote of Today:"
  curl -s https://motivational-quote-api.herokuapp.com/quotes/random  | jq -r '.quote'
}
motive
echo "*************************************"

topic=$1
number=$2
directory="code_challenges/$topic-challenges"

if [ ! -d "$directory" ];
then
        mkdir code_challenges/$topic
fi
mkdir code_challenges/$topic/challenge$2


`which curl` -s https://boshrajaber.github.io/code-challenges-content/javascript/$1/challenge$2/README.md > code_challenges/$topic/challenge$2/README.md

echo "# Write here the code challenge solution" >> code_challenges/$topic/challenge$2/challenge$2.py
echo "# Write your test here" >> code_challenges/$topic/challenge$2/test_challenge$2.py