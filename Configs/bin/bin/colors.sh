#!/bin/sh

for i in $(seq 0 15); do
    for j in $(seq 0 15); do
        k=$(($i + 16 * $j))
        printf '\033[1;38;5;%dm%3d  ' "$k" "$k"
    done
    echo
done
