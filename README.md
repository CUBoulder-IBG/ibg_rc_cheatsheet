# IBG Research Computing Cheatsheet


Table of Contents
=================

   * [CU Research Computing Cheatsheet](#cu-research-computing-cheatsheet)
      * [Monitoring Slurm Activity](#monitoring-slurm-activity)
         * [View available nodes and their properties:](#view-available-nodes-and-their-properties)
         * [Useful links](#useful-links)

Created by [gh-md-toc](https://github.com/ekalinin/github-markdown-toc)

# CU Research Computing Cheatsheet

## Monitoring Slurm Activity

### View available nodes and their properties:


```
 sinfo  --Node -o  "%.12N %.16P %.11T %.4c %.13C %.8e /%.8m %.30f"
```

 - `NODELIST` is the name of the node, can be specified when submitting via --nodelist
 - `PARTITION` is the name of the partition. You likely will never need to use this unless you want a particular partition of the preemptable queue
 - `STATE` - mixed means that some of the `CPUS` are in use (see below)
 - `CPUS(A/I/O/T)` - on a given node: allocated/idle/other/total nodes
 - `FREE_MEM /  MEMORY` free memory / total memory in MB (divide by 1024 to convert to GB
 

### Useful links

 - [Batch scheduling and Summit specifications](https://www.rc.colorado.edu/support/user-guide/batch-queueing.html)
 - [Blanca resources](https://www.rc.colorado.edu/support/user-guide/compute-resources.html#blanca)

