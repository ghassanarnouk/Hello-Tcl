#!/usr/bin/tclsh

# result = 1 (integer)
set variableA "10"
set result [expr $variableA / 9]
puts $result

# result = 1.11 (float)
set variableA "10"
set result [expr $variableA / 9.0]
puts $result


# result = 1.11 (float)
set variableA "10.0"
set result [expr $variableA / 9]
puts $result