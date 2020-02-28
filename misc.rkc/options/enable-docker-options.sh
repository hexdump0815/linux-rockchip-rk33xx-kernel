#!/bin/bash

cd /compile/source/linux-ayufan-rk

for i in `cat /compile/doc/ayufan-rk/misc.rkc/options/docker-options-mod.txt`; do
  echo $i
  ./scripts/config -m $i
done

for i in `cat /compile/doc/ayufan-rk/misc.rkc/options/docker-options-yes.txt`; do
  echo $i
  ./scripts/config -e $i
done
