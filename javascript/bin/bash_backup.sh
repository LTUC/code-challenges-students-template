#!/bin/bash

echo "*********************************"
echo "*** Pulling Code Challenge $1 ***"
echo "*********************************"

motive () {
  echo "Motiviation Quote of Today:"
  curl -s https://motivational-quote-api.herokuapp.com/quotes/random  | jq -r '.quote'
}
motive
echo "*********************************"

mkdir code-challenges/challenge$1

`which curl` -s https://ltuc.github.io/code-challenges-content/javascript/day$1/challenge$1.js > ./code-challenges/challenge$1/challenge$1.js
`which curl` -s https://ltuc.github.io/code-challenges-content/javascript/day$1/challenge$1.test.js > ./code-challenges/challenge$1/challenge$1.test.js