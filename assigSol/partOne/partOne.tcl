#!/usr/bin/tclsh

if 0 {
    Tcl program that prints from 1 to 121.

    Prints "Smarty" instead of number that are divisble by 3.
    Prints "Pants" instead of number that are divisble by 5.
    Prints "SmartyPants" instead of number that are divisble by both 3 and 5.
}
for {set i 1} {$i <= 121} {incr i} {
    if {$i % 15 == 0} {
        puts "SmartyPants" 
    } elseif {$i % 3 == 0} {
        puts "Smarty" 
    } elseif {$i % 5 == 0} {
        puts "Pants"
    } else {
        puts $i
    }
}
