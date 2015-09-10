#! /bin/bash

basename=mbp10,1
DIR=.

set -x
system_profiler > ${basename}-system_profiler-out.txt

cp /dev/null ${basename}-core-5runs.txt
for stride in 1 16 64
do
    cp /dev/null ${basename}-thrash-${stride}-5runs.txt
done

for run in 1 2 3 4 5
do
    ${DIR}/benchmark-core >> ${basename}-core-5runs.txt
    for stride in 1 16 64
    do
        ${DIR}/benchmark-thrash ${stride} >> ${basename}-thrash-${stride}-5runs.txt
    done
done