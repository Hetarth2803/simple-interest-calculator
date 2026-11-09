#!/bin/bash

# Simple Interest Calculator
# Formula: Simple Interest = (Principal * Rate * Time) / 100

echo "==== Simple Interest Calculator ===="

# Take input from the user
read -p "Enter the principal amount: " principal
read -p "Enter the rate of interest (in %): " rate
read -p "Enter the time period (in years): " time

# Calculate simple interest
simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Calculate the total amount
total=$(echo "scale=2; $principal + $simple_interest" | bc)

# Display the results
echo "-----------------------------------"
echo "Principal       : $principal"
echo "Rate of interest: $rate%"
echo "Time period     : $time years"
echo "Simple interest : $simple_interest"
echo "Total amount    : $total"
