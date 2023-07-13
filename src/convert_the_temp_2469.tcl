#! /usr/bin/tclsh

# You are given a non-negative floating point number rounded to two decimal places celsius, that denotes the temperature in Celsius.
# You should convert Celsius into Kelvin and Fahrenheit and return it as an array ans = [kelvin, fahrenheit].
# Return the array ans. Answers within 10-5 of the actual answer will be accepted.

# Note that:
# Kelvin = Celsius + 273.15
# Fahrenheit = Celsius * 1.80 + 32.00

# Example:
# Input: celsius = 36.50
# Output: [309.65000,97.70000]
# Explanation: Temperature at 36.50 Celsius converted in Kelvin is 309.65 and converted in Fahrenheit is 97.70.

proc convert_temp {celsius} {
  set temperature(0) [expr $celsius + 273.15]         ;# in kelvin
  set temperature(1) [expr $celsius * 1.80 + 32.00]   ;# in fahrenheit

  puts "\[[format %.2f $temperature(0)], [format %.2f $temperature(1)]]"
  puts "Temperature at [format %.2f $celsius] Celsius converted in Kelvin is [format %.2f $temperature(0)] and converted in Fahrenheit is [format %.2f $temperature(1)]."
}

convert_temp 36.50