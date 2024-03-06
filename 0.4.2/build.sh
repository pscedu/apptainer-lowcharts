#!/bin/bash

# Copyright © 2021-2024 Pittsburgh Supercomputing Center.
# All Rights Reserved.

IMAGE=apptainer-lowcharts-0.4.2.sif
DEFINITION=recipe.def

if [ ! -f $IMAGE ]; then
	apptainer build $IMAGE $DEFINITION
fi

python3 -c 'import random; [print(random.normalvariate(5, 5)) for _ in range(100000)]' > data.txt
./apptainer-lowcharts-0.4.2.sif hist data.txt

if [ -f data.txt ]; then
	rm -f data.txt
fi
