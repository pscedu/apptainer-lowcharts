#!/bin/bash

# Copyright © 2021-2024 Pittsburgh Supercomputing Center.
# All Rights Reserved.

IMAGE=apptainer-lowcharts-0.5.9.sif
DEFINITION=recipe.def

apptainer build -F $IMAGE $DEFINITION

python3 -c 'import random; [print(random.normalvariate(5, 5)) for _ in range(100000)]' | ./apptainer-lowcharts-0.5.9.sif hist: