#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd $DIR

function load() {
  pushd ./laptop/$1
  LABEL="v5_${1}" python ../../dataload.py
  popd
}

#load test_LLLLLFF_d100
#load test_LLLLLLFF_d100
#load test_LLLLLLF_d100
load test_LLLLLLLFF_d100
load test_LLLLLLLF_d100
#load test_LLLLLLLLFF_d100

# didn't load
#load test_LLLLLLLLF_d10

ls: cannot access 'long': No such file or directory
ls: cannot access 'long': No such file or directory
