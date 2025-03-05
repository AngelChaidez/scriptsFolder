#!/bin/bash

for num in {2..100}; do
    is_prime=1  # Assume the number is prime
    for ((i = 2; i <= num / 2; i++)); do
        if (( num % i == 0 )); then
            is_prime=0  # Not prime
            break
        fi
    done
    if (( is_prime == 1 )); then
        echo "$num is prime"
    fi
done

