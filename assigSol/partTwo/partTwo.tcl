#!/usr/bin/tclsh

#   Tcl program that accepts a list of real numbers (or integers).

#   Calculates and displays 'median', the 'average', and the 'sum' of the numbers.
#   Generates and displays a new list containing the numbers in descending sorted order.
#   Generates and displays 2 new lists
#        first list: contains only the numbers that have /both/ digits '1' and '5'
#       second list: contains the numbers with /either/ digits '1' or '5'

set tcl_precision 6 ;# number of digits to retain when converting from float to string

# Ask for user input to create a list
# Checks that user input is a number
puts "Enter a list of real numbers (separated by newlines, end input with a period '.' on new line):"

set list {}

while {true} {
    set input [gets stdin]
    if {$input != "."} {
        if {[string is double $input]} {
            lappend list $input
        } else {
            puts "Invalid input, please enter an real numbers:"
        }
    } elseif {$input == " "} {
        puts "Invalid input, please enter an real numbers:"
    } else {
        puts ""
        break
    }
}


# Calculates the sum of numbers in a list.
# The sum is the total obtained by adding numbers in list.
proc calculate_sum {numbers} {
    set sum 0.0

    foreach num $numbers {
        set sum [expr $sum + $num]
    }

    return $sum
}

# Calculates the average of numbers in a list.
# The average is obtained as the sum of numbers divided by total count of numbers.
proc calculate_average {numbers} {
    set l [llength $numbers]
    set sum [calculate_sum $numbers]

    return [expr $sum/$l]
}

# Calculates the median of a list.
# Arrange numbers in list in ascending order.
# If number of values in list is odd, the median is middle value.
# If number of values in list is even, the median is the average of two middle values.
proc calculate_median {numbers} {
    set l [llength $numbers]
    set s [lsort -real -increasing $numbers]

    # puts $s ;# testing list is in ascending order

    if {$l % 2 != 0} {
        return [lindex $s [expr $l/2]]
    } else {
        return [expr ([lindex $s [expr $l/2 - 1]] + [lindex $s [expr $l/2]]) / 2.0]
    } 
}

# Generates a list containing only numbers that have either digits '1' or '5'.
proc contains_1_or_5 {numbers} {
    set list_has_1_or_5 {}

    foreach num $numbers {
        if {[regexp {.*1.*} $num] || [regexp {.*5.*} $num]} {
            lappend list_has_1_or_5 $num
        }
    }

    if {$list_has_1_or_5 == ""} {
        return "list is empty"
    }

    return $list_has_1_or_5
}

# Generates a list containing numbers that have both digits '1' and '5'.
proc contains_1_and_5 {numbers} {
    set list_has_1_and_5 {}

    foreach num $numbers {
        if {[regexp {.*1.*5.*} $num] || [regexp {.*5.*1.*} $num]} {
            lappend list_has_1_and_5 $num
        }
    }

    if {$list_has_1_and_5 == ""} {
        return "list is empty"
    }

    return $list_has_1_and_5
}


# Print an output summary of the results
puts "Summary Results:"
puts "----------------"
#puts ""
#puts "User list of numbers: $list"
puts ""
puts " The median is: [calculate_median $list]"
puts "The average is: [calculate_average $list]"
puts "    The sum is: [calculate_sum $list]"
puts ""
puts "List of numbers in descending order: [lsort -real -decreasing $list]" ;# Generates and displays a list containing the numbers in a descending order.
puts ""
puts "List of numbers with both digits 1 and 5: [contains_1_and_5 $list]"
puts "List of numbers with either digit 1 or 5: [contains_1_or_5 $list]"
