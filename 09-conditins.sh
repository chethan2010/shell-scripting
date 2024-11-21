#!/bin/bash

Number=$1
#Number2=$2

if  [$Number -gt 100]
then
    echo "Given $Number is Greater then 100"
else
    echo "Given $Number is is less then 100"
fi