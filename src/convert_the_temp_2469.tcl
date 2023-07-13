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
  set kelvin [expr $celsius + 273.15]         ;# in kelvin
  set fahrenheit [expr $celsius * 1.80 + 32.00]   ;# in fahrenheit

  puts "\[[format %.2f $kelvin], [format %.2f $fahrenheit]]"
  puts "Temperature at [format %.2f $celsius] Celsius converted in Kelvin is [format %.2f $kelvin] and converted in Fahrenheit is [format %.2f $fahrenheit]."
}

convert_temp 36.50