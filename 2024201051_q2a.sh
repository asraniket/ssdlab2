#!/bin/bash


if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <number_of_terms>"
    exit 1
fi

n=$1

if ! [[ "$n" =~ ^[0-9]+$ ]] || [ "$n" -le 0 ]; then
    echo "Error: Number of terms must be a positive integer."
    exit 1
fi

a=0
b=1

for (( i=0; i<n; i++ )); do
    echo -n "$a "
    fn=$((a + b))
    a=$b
    b=$fn
done

echo
