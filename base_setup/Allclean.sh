#!/bin/bash

foamCleanCase

rm -rf 0 > /dev/null 2>&1
cp -r 0_org 0 > /dev/null 2>&1
