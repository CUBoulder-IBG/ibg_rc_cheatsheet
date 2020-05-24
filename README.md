IBG Research Computing Cheatsheet
=========

<!--ts-->
   * [IBG Research Computing Cheatsheet](#ibg-research-computing-cheatsheet)
      * [Monitoring Slurm and Job Activity](#monitoring-slurm-and-job-activity)
         * [View your running jobs:](#view-your-running-jobs)
         * [View your completed jobs:](#view-your-completed-jobs)
         * [Measure performance of completed jobs:](#measure-performance-of-completed-jobs)
            * [Display jobs completed since a particular date](#display-jobs-completed-since-a-particular-date)
            * [Display jobs' timing and memory usage](#display-jobs-timing-and-memory-usage)
         * [View available nodes and their properties:](#view-available-nodes-and-their-properties)
      * [Example jobs](#example-jobs)
         * [Interactive session](#interactive-session)
         * [Preemptable job](#preemptable-job)
         * [Job array with single index](#job-array-with-single-index)
         * [Job array with multiple indices](#job-array-with-multiple-indices)
   * [Useful links](#useful-links)
   * [Modifying this README](#modifying-this-readme)

<!-- Added by: rsb, at: Sun May 24 12:27:21 MDT 2020 -->

<!--te-->

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

The following flags can be combined to suit your needs

#### Display jobs completed since a particular date 

```
sacct -S <MMDD>
```

#### Display jobs' timing and memory usage

```
sacct -o 'jobid%20,jobname%16,state,elapsed,maxrss'
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

# Useful links

 - [Batch scheduling and Summit specifications](https://www.rc.colorado.edu/support/user-guide/batch-queueing.html)
 - [Blanca resources](https://www.rc.colorado.edu/support/user-guide/compute-resources.html#blanca)

# Modifying this README

Do not directly modify this document directly. Instead modify `ibg_rc_cheatsheet.md` and run `compile.sh` to add TOC and create printable version. This will also update the README displayed on github. You might need to make `gh-md-toc` executable via `chmod a+x gh-md-toc` and you definitely will need to install pandoc. TOC generation powered by [github-markdown-toc](https://github.com/ekalinin/github-markdown-toc)
