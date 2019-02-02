#!/usr/bin/env bash

function extract() {
  tar -xf $1.tgz simTest/FNode0_missing_messages.txt simTest/FNode0_simTest.txt
  mv simTest $1/
}

extract fail_4LF5_d100
extract fail_5LF4_d100
extract fail_6LF3_d100
extract test_7LF2_d100
