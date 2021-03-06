#!/bin/bash

cd /compile/source/linux-ayufan-rk

./scripts/config -d CONFIG_EXT2_FS
./scripts/config -d CONFIG_EXT3_FS
./scripts/config --set-val CONFIG_MAGIC_SYSRQ_DEFAULT_ENABLE 0

for i in `cat /compile/doc/ayufan-rk/misc.rkc/options/additional-options-yes.txt`; do
  echo $i
  ./scripts/config -e $i
done

for i in `cat /compile/doc/ayufan-rk/misc.rkc/options/additional-options-mod.txt`; do
  echo $i
  ./scripts/config -m $i
done
