#!/usr/bin/env bash

# exit script if any command fails
set -e
set -o pipefail

# exit script if not in Chipyard conda env
if [[ `basename $CONDA_PREFIX` != .conda-env ]]; then
    echo 'ERROR: Chipyard conda env not activated. Please source env.sh and run this script again.'
    exit
fi

git submodule update --init vlsi/hammer
pip install -e vlsi/hammer
