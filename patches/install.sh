#!/bin/bash

C=$(pwd)
S="vtech/uyt4"
D="bootable/recovery"

apply_patches() { cd ${C}/${1}; git apply --ignore-whitespace ${C}/device/${S}/patches/$1/*.patch; cd ${C}; }

for R in $D; do
    apply_patches $R
done
