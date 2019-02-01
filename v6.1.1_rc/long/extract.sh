#!/usr/bin/env bash

function extract() {
  tar -xf $1.tgz simTest/fnode0_missing_messages.txt simTest/fnode0_simtest.txt
  mv simTest $1/
}

extract stall0_5LF4_d100
extract stall1_5LF4_d100

extract test_4LF5_d100
extract test_6LF3_d100
extract test_7LF2_d100
