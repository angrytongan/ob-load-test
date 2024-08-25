#!/bin/bash
MAX_POINTS=300000
MAX_MAGNITUDE=10
MAX_DIM=10000
ID=0

echo "r,x1,y1,x2,y2,x3,y3"

while [ $ID -ne $MAX_POINTS ]; do
    M=$((1 + $RANDOM % $MAX_MAGNITUDE))
    X1=$((1 + $RANDOM % $MAX_DIM))
    Y1=$((1 + $RANDOM % $MAX_DIM))
    X2=$((1 + $RANDOM % $MAX_DIM))
    Y2=$((1 + $RANDOM % $MAX_DIM))
    X3=$((1 + $RANDOM % $MAX_DIM))
    Y3=$((1 + $RANDOM % $MAX_DIM))
    echo "${M},${X1},${Y1},${X2},${Y2},${X3},${Y3}"
    ID=$((ID+1))
done
