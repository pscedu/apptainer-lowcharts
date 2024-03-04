#!/bin/bash

# Copyright © 2021-2024 Pittsburgh Supercomputing Center.
# All Rights Reserved.

IMAGE=apptainer-lowcharts-0.4.2.sif
DEFINITION=recipe.def

apptainer build -F $IMAGE $DEFINITION
