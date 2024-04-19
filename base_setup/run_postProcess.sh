#!/bin/bash

#To compute additional fields


foamPostProcess -solver fluid -func MachNo -noFunctionObjects 
foamPostProcess -solver fluid -func CourantNo -noFunctionObjects 
foamPostProcess -solver fluid -func vorticity -noFunctionObjects 
foamPostProcess -solver fluid -func enstrophy -noFunctionObjects 
foamPostProcess -solver fluid -func "grad(U)" -noFunctionObjects 
foamPostProcess -func 'components(U)'
foamPostProcess -func 'mag(U)'
foamPostProcess -func 'magSqr(U)'
foamPostProcess -func 'totalPressureCompressible(rho,U,p)' -noZero
foamPostProcess -func 'div(U)' -time 500:1000
foamPostProcess -func 'mag(grad(U))' -latestTime