#!/bin/bash

mkdir -p A1 A2/B1 A2/B2 A3/B3

for i in `seq 1 5`
do
  touch A1/b_0${i}
done

for i in `seq 6 9`
do
  touch A2/b_0${i}
done

for i in `seq 10 16`
do
  touch A3/b_${i}
done

for i in `seq 17 20`
do
  touch A2/B1/c_${i}
done

for i in `seq 21 26`
do
  touch A2/B2/c_${i}
done

for i in `seq 27 33`
do
  touch A3/B3/c_${i}
done
