#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd $DIR

SUBDIR=long

function load() {
  pushd ./$SUBDIR/$1
  LABEL="v5_${1}" python ../../dataload.py
  popd
}

load fail_4LF5_d100
load fail_5LF4_d100
load fail_6LF3_d100
load test_7LF2_d100
