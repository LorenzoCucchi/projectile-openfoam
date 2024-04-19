#!/bin/bash

foamCleanCase

rm -rf 0 > /dev/null 2>&1
cp -r 0_org 0 > /dev/null 2>&1

blockMesh
checkMesh | tee log.checkmesh

renumberMesh -overwrite | tee log.renumbermesh

foamRun | tee log.solver

