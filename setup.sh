#!/bin/bash

mkdir -p test/A1 test/A2/B1 test/A2/B2 test/A3/B3

for i in `seq 1 5`
do
  touch test/A1/b_0${i}
done

for i in `seq 6 9`
do
  touch test/A2/b_0${i}
done

for i in `seq 10 16`
do
  touch test/A3/b_${i}
done

for i in `seq 17 20`
do
  touch test/A2/B1/c_${i}
done

for i in `seq 21 26`
do
  touch test/A2/B2/c_${i}
done

for i in `seq 27 33`
do
  touch test/A3/B3/c_${i}
done
