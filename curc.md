
# CU Research Computing Cheatsheet

### Summit partitions

| Partition name | Description                                 | # of nodes | cores/node | RAM/core (GB) | Max Walltime | Billing weight |
| -------------- | ------------------------------------------- | ---------- | ---------- | ------------- | ------------ | -------------- |
| `shas`         | General Compute with Haswell CPUs (default) | 380        | 24         | 5.25          | 24H          | 1              |
| `sgpu`         | GPU-enabled                                 | 10         | 24         | 5.25          | 24H          | 2.5            |
| `smem`         | High-memory                                 | 5          | 48         | 42            | 7D           | 6              |
| `sknl`         | Phi (Knights Landing) CPU                   | 20         | 64         | TBD           | 24H          | 0.1            |

### Summit QOS-types

QOS name | Description                            | Max walltime       | Max jobs/user | Node limits         | Priority boost
-------------|--------------------------------------------|------------------------|-------------------|-------------------------|--------------------------------
`normal`       | default                                    | Derived from partition | n/a               | 256/user                | 0
`debug`        | For quicker turnaround when testing        | 1H                     | 1                 | 32/job                  | Equiv. of 3-day queue wait time
`long`         | For jobs needing longer wall times         | 7 D                    | n/a               | 22/user; 40 nodes total | 0
`condo`        | For groups who have purchased Summit nodes | 7D                     | n/a               | n/a                     | Equiv. of 1 day queue wait time

### Blanca node specifications

| Node name             | High-prio QoS | cores/node | freq    | RAM/core | disk  | Features                                  |
| --------------------- | ------------- | ---------- | ------- | -------- | ----- | ----------------------------------------- |
| `bnode010[1-5]`       | blanca-ics    | 32         | 2.6 GHz | 256      | 1 TB  | sandybridge, avx, rhel6                   |
| `bnode010[6-7]      ` | blanca-igg    | 24         | 2.5 GHz | 128      | 1 TB  | haswell, avx2, rhel6                      |
| `bnode01[08-11]     ` | blanca-ibgc1  | 48         | 2.5 GHz | 256      | 1 TB  | haswell, avx2, rhel6                      |
| `bnode01[12-14]     ` | blanca-mrg    | 24         | 2.5 GHz | 128      | 1 TB  | haswell, avx2, rhel6                      |
| `bnode01[15-16]     ` | blanca-el     | 56         | 2.4 GHz | 128      | 1 TB  | broadwell, avx2, rhel7                    |
| `bnode02[01-36]     ` | blanca-ccn    | 16         | 3.3 GHz | 64       | 1 TB  | ivybridge, Quadro, k2000, avx, fdr, rhel7 |
| `bnode0301          ` | blanca-ics    | 32         | 2.4 GHz | 256      | 1 TB  | broadwell, avx2, rhel6                    |
| `bnode030[2-9]      ` | blanca-sha    | 28         | 2.4 GHz | 128      | 1 TB  | broadwell, avx2, rhel7                    |
| `bnode0310          ` | blanca-ics    | 32         | 2.4 GHz | 256      | 1 TB  | broadwell, avx2, rhel6                    |
| `bnode0311          ` | blanca-ceae   | 28         | 2.4 GHz | 128      | 1 TB  | broadwell, avx2, rhel7                    |
| `bgpu-dhl1          ` | blanca-dhl    | 56         | 2.4 GHz | 128      | 1 TB  | broadwell, avx2, rhel7, Tesla, P100       |
| `bnode03[12-15]     ` | blanca-pccs   | 28         | 2.4 GHz | 128      | 1 TB  | broadwell, avx2, rhel7                    |
| `bnode0316,bnode0401` | blanca-csdms  | 56         | 2.4 GHz | 128      | 1 TB  | broadwell, avx2, rhel7                    |
| `bnode04[02-03]     ` | blanca-sol    | 56         | 2.4 GHz | 128      | 1 TB  | broadwell, avx2, rhel7                    |
| `himem04            ` | blanca-ibg    | 80         | 2.1 GHz | 1024     | 10 TB | westmere-ex, localraid, rhel6             |


### Useful links

 - [Batch scheduling and Summit specifications](https://www.rc.colorado.edu/support/user-guide/batch-queueing.html)
 - [Blanca resources](https://www.rc.colorado.edu/support/user-guide/compute-resources.html#blanca)
