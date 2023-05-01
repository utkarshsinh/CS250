#!/bin/bash

# Set variables
BINARY_PATH="/home/utkarshsinh/cb-multios/binary/Accel"
SEEDS_DIR="/home/utkarshsinh/cb-multios/seeds"
OUTPUT_DIR="/home/utkarshsinh/cb-multios/output_radamsa"
NUM_TEST_CASES=100

# Generate test cases using Radamsa
mkdir -p "$OUTPUT_DIR"
for seed in "$SEEDS_DIR"/*; do
    radamsa "$seed" -o "$OUTPUT_DIR/test_case_%n.bin" -n $NUM_TEST_CASES
done

# Fuzz the binary using the generated test cases
for testcase in "$OUTPUT_DIR"/*.bin; do
    echo "Running test case: $testcase"
    "$BINARY_PATH" < "$testcase"
done
