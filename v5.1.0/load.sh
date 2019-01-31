#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd $DIR

function load() {
  pushd ./veena/$1
  LABEL="v5_${1}" python ../../dataload.py
  popd
}

#load test_LLLLLFF_d100
#load test_LLLLLLFF_d100
#load test_LLLLLLF_d100
load oldcode_Jan30_2_drop_line
#load test_LLLLLLLF_d100
#load test_LLLLLLLLFF_d100

# didn't load
#load test_LLLLLLLLF_d10
