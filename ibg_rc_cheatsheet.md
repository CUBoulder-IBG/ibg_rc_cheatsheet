## Monitoring Slurm and Job Activity

### View your running jobs:

```
 ---
```


### View your completed jobs:

```
 ---
```

### Measure performance of completed jobs:

```
 ---
```


### View available nodes and their properties:

```
 sinfo  --Node -o  "%.12N %.16P %.11T %.4c %.13C %.8e /%.8m %.30f"
```

 - `NODELIST` is the name of the node, can be specified when submitting via --nodelist
 - `PARTITION` is the name of the partition. You likely will never need to use this unless you want a particular partition of the preemptable queue
 - `STATE` - mixed means that some of the `CPUS` are in use (see below)
 - `CPUS(A/I/O/T)` - on a given node: allocated/idle/other/total nodes
 - `FREE_MEM / MEMORY` free memory / total memory in MB (divide by 1024 to convert to GB

## Example jobs

### Interactive session

### Preemptable job

### Job array with single index

### Job array with multiple indices
