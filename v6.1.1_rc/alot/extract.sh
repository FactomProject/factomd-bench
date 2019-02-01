#!/usr/bin/env bash

function extract() {
  tar -xf $1.tgz simTest/fnode0_missing_messages.txt simTest/fnode0_simtest.txt
  mv simTest $1/
}

# skip tests w/o message drop
#extract test_LF_d0
#extract test_LF_d100
#extract test_LLF_d0
#extract test_LLF_d100
#extract test_LLLF_d0
#extract test_LLLF_d100
#extract test_LLLLF_d0


# already extracted
extract test_LLLLF_d100
extract test_LLLLLF_d100
extract test_LLLLLLF_d100
extract test_LLLLLLLF_d100
extract test_LLLLLLLLF_d100

extract test_LLLLLFF_d100
extract test_LLLLLLFF_d100
extract test_LLLLLLLFF_d100
extract test_LLLLLLLLFF_d100
