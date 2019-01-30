#!/usr/bin/env bash

function extract() {
  tar -xf $1.tgz simTest/FNode0_missing_messages.txt simTest/FNode0_simTest.txt
  mv simTest $1/
}

extract test_LLLLLF_d100
extract test_LLLLLFF_d100
extract test_LLLLLLF_d100
extract test_LLLLLLFF_d100
extract test_LLLLLLLF_d100
extract test_LLLLLLLFF_d100
extract test_LLLLLLLLF_d100
extract test_LLLLLLLLFF_d100
