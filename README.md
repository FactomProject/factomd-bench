# factomd-bench

tools to inject json-encoded logs and produce reports


### Loading data

* create tgz from logs after a simulation  run
  tgz files should  have a folder `simTest/fnode00<variouslogs>.txt`


```
#snippet from test_set2.sh in FD-798 branch of factomd

function stashlogs() {
  tar -czf $1.tgz simTest/*.txt
}

GIVEN_NODES=LF MAX_BLOCKS=40 BATCHES=10 ENTRIES=1000 DELAY_BLOCKS=1 DROP_RATE=100 ./test.sh
stashlogs test_LF_d100
```

* copy to a subolder like so

```
v5.1.0/
├── dataload.py
├── laptop
│   ├── extract.sh
│   ├── test_LLLLLF_d100.tgz
│   ├── test_LLLLLLLLF_d100.tgz
│   └── test_LLLLLLLLFF_d100.tgz
└── load.sh
```

* Extract some log files using `extract.sh`

```
v5.1.0/
├── dataload.py
├── laptop
│   ├── extract.sh
│   ├── test_LLLLLF_d100.tgz
│   ├── test_LLLLLFF_d100
│   │   ├── FNode0_missing_messages.txt
│   │   └── FNode0_simTest.txt
│   ├── test_LLLLLLLLF_d100.tgz
│   ├── test_LLLLLLLLFF_d100
│   │   ├── FNode0_missing_messages.txt
│   │   └── FNode0_simTest.txt
│   └── test_LLLLLLLLFF_d100.tgz
└── load.sh
```

* load them into the db using `./v5.1.0/load.sh` or `./rebuild.sh` to to run all

review log labels in db:
```
load=# select * from log_runs;
 id |         label          |             ts
----+------------------------+----------------------------
  1 | v5_test_LLLLLLLFF_d100 | 2019-01-31 17:07:33.116239
  2 | v5_test_LLLLLLLF_d100  | 2019-01-31 17:08:19.244705
  3 | v6_test_LLLLLLLFF_d100 | 2019-01-31 17:09:05.469478
  4 | v6_test_LLLLLLLF_d100  | 2019-01-31 17:09:52.358996
(4 rows)
```

^ this allows you to use `WHERE run=X` when comparing log data between runs

