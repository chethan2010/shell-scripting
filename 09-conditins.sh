#!/bin/bash

NUMBER=$1
#Number2=$2

if  [$NUMBER -gt 100]
then
    echo "Given $NUMBER is Greater then 100"
else
    echo "Given $NUMBER is is less then 100"
fi