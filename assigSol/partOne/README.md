# Assignment Part 1

Tcl program that prints the numbers from 1 to 121. 
However, it:

* Prints "Smarty" instead of number that are multiples of 3
* Prints "Pants" instead of number that are multiples of 5
* Prints "Smarty" instead of number that are multiples of both 3 and 5

This program folder contains 4 files including:

- **partOne.tcl**: source code for part 1
- **output.txt**: expected output of program
- **README.md**: a guid to help user compile program in terminal, details of solution implementation, as well as test cases to-be-performed, ensuring the program is bug-free.
- **README.pdf**: a pdf version of README.md, for convenience

## Prerequisites

Ensure to have `tclsh` installed on your development machine.

## Execution

In order to execute the program, perform the `tclsh partOne.tcl` command.

## Discussion of solution implementation

A "for loop" was implemented to iterate through numbers from 1 to 121 *inclusive*.

The program checks for numbers that are divisible by 15 first, multiples of both 3 and 5, since it makes the code runs more efficient by not checking if the number is divisible by 3, then 5, then 15.
If the number is divisible by 15, that means it is already divisible by both 3 and 5.
The "SmartyPants" message is printed instead of the actual number which is divisible by 15.

Then, the program checks for numbers that are divisible by 3 (and not 5 as a second condition).
There are more numbers in the range provided divisible by 3 than 5.
The "Smarty" message is printed instead of the actual number which is divisible by 3.
This will avoid frequently going through an extra check.

Thereafter, the program checks for numbers that are divisible by 5.
The "Pants" message is printed instead of the actual number which is divisible by 5.

Lastly, if none of the conditions above are satisfied, the program prints the actual number that is not divisible by 3, 5, or multiples of both 3 and 5.

<div style="page-break-after: always;"></div>

## List of test cases

|   | Test Case                                                                                                              | Expected Output                                                                                                                         | Status            |
| - | ---------                                                                                                              | ---------------                                                                                                                         | ------ |
| 1 | Ensure the min and max limits of the range specified are included as part of the output                                | numbers 1 and 121 are printed as part of the output                                                                                     | :white_check_mark:                                    |
| 2 | Observe the output and ensure that only multiples of 3 are replaced by the string "Smarty"                             | Multiples of 3  only (eg. 3, 6, 9 ... etc) are not printed as part of the output and they are replaced by the string "Smarty"           | :white_check_mark:                                                             |
| 3 | Observe the output and ensure that only multiples of 5 are replaced by the string "Pants"                              | Multiples of 5 only (eg. 5, 10, 20 ... etc) are not printed as part of the output and they are replaced by the string "Pants"           | :white_check_mark:                                                              |
| 4 | Observe the output and ensure that numbers that are multiples of both 3 and 5 are replaced by the string "SmartyPants" | Multiples of both 3 and 5 (eg. 15, 30, ... etc) are not printed as part of the output and they are replaced by the string "SmartyPants" | :white_check_mark:                                                               |
| 5 | Observe the output and ensure that the rest of the numbers that are not multiples of 3, 5, or both 3 and 5 are printed | Numbers such as 2, 4, ... etc are printed as part of the output                                                                         | :white_check_mark:                                                |

