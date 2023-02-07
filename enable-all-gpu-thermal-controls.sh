#!/bin/sh

sudo nvidia-xconfig -a --enable-all-gpus --cool-bits=4 --multigpu=off --sli=off --no-allow-empty-initial-configuration
