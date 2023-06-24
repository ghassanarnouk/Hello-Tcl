#!/usr/bin/tclsh

set myVar 18
puts $myVar

set myVar 20 ;# overwriting the defined value
puts [expr $myVar + 6+9]