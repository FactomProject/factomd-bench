#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd $DIR

SUBDIR='long'

function load() {
  pushd ./$SUBDIR/$1
  LABEL="v6_${1}" python ../../dataload.py
  popd
}

#load stall0_5LF4_d100
#load stall1_5LF4_d100
load test_4LF5_d100
load test_6LF3_d100
load test_7LF2_d100
