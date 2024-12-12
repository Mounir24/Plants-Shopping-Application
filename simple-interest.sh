#!/bin/bash

# Function to calculate simple interest
calculate_simple_interest() {
    principal=$1
    annual_rate=$2
    time_period=$3

    # Calculate interest
    interest=$(echo "$principal * $annual_rate * $time_period / 100" | bc -l)
    echo "The interest is: \$$(printf "%.2f" $interest)"
}

# Example usage
principal=1000  # Principal amount in dollars
annual_rate=5   # Annual rate of interest in percent
time_period=3   # Time period in years

calculate_simple_interest $principal $annual_rate $time_period
