#!/usr/bin/env bash

function extract() {
  pushd ./laptop/$1
  python ../../dataload.py
  popd
}


extract test_LLLLLFF_d100
extract test_LLLLLLFF_d100
extract test_LLLLLLF_d100
extract test_LLLLLLLFF_d100
extract test_LLLLLLLF_d100
extract test_LLLLLLLLFF_d100
