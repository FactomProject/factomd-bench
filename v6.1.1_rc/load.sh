#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd $DIR

function load() {
  pushd ./veena/$1
  LABEL="v6_${1}" python ../../dataload.py
  popd
}

#load test_LLLLLFF_d100
#load test_LLLLLLFF_d100
#load test_LLLLLLF_d100
#load test_LLLLLLLFF_d100
load newcode_Jan30_2_drop_line
#load test_LLLLLLLLFF_d100
