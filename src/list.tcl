#!/usr/bin/tclsh

if 0 {
    lindex: retrieves an element from a list or a nested list

    puts [lindex $myVar]: will print -> red green blue
}
set myVar {red green blue} ;# arg0, arg1, arg2
puts [lindex $myVar 0]

set myvar "red green blue" ;# arg0, arg1, arg2
puts [lindex $myVar 1]