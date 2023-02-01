# Hello-TCL

:books: My Notes for Tcl Scripting - written in markdown :fire:

## Table of contents

Section 1: [Overview](https://github.com/ghassanarnouk/Hello-TCL#section-1-overview)\
Section 2: [Environment Setup](https://github.com/ghassanarnouk/Hello-TCL#section-2-environment-setup)\
Section 3: [Special Variables](https://github.com/ghassanarnouk/Hello-TCL#section-3-special-variables)\
Section 4: [Basic Syntax](https://github.com/ghassanarnouk/Hello-TCL#section-4-basic-syntax)\
Section 5: [Commands](https://github.com/ghassanarnouk/Hello-Tcl#section-5-commands)\
Section 6: [Data Types](https://github.com/ghassanarnouk/Hello-Tcl#section-6-data-types)\
Section 7: [Variables](https://github.com/ghassanarnouk/Hello-Tcl#variables)
Section 8: [Operators]()


## Section 1: Overview

Tcl is shortened from **Tool Command Language**.
It is a combination of a scripting language and its own interpreter that gets embedded to the application.

It aims at providing the ability for programs to interact with other programs and also for acting as an emendable interpreter.
Even though, the original aim was to enable programs to interact, you can find full-fledged applications written in Tcl.

### Features of Tcl

* Reduced development time
* Powerful and simple user interface kit with integration of TK
* Write once, run anywhere.
It runs on Windows, Mac OS X, and almost on every Unix platform
* Quite easy to get started for experienced programmers; since the language is so simple that they can learn Tcl in a few hours or days
* You can easily extend existing applications with Tcl.
Also, it is possible to include Tcl in C/C++ or Java to Tcl or vice versa
Have a powerful set of networking functions
* Finally, it's open source, free, and can be used for commercial applications without an limit

### Applications

Tcl is a general-purpose language and you can find Tcl everywhere.
It includes:

* Scalable websites tha are often backed by databases
* High performance web servers build with TclHttpd
* Tcl with CGL based websites
* Desktop GUI applications
* Embedded applications

## Section 2: Environment Setup

### Text Editor

The files created using the text editor are called **source files** and contain program **source code**.
The source files for Tcl programs are named with the extension "**.tcl**".

## Tcl Interpreter

It is just a small program that enables you to type Tcl commands and have them executed line-by-line.
It **stops execution** of a tcl file, in case, it **encounters an error** unlike a compiler that executes fully.

Now, we can build, execute, and run Tcl file, say helloWorld.tcl, as follows:

```bash
$ tclsh helloWorld.tcl
```

## Section 3: Special Variables

| Variable         | Description                                                                                                                              |
| ----------       | ------------                                                                                                                             |
| argc             | Refers to a number of command line arguments.                                                                                            |
| argv             | Refers to the list containing the command-line arguments.                                                                                |
| argv0            | Refers to the file name of the file being interpreted ***OR***  the name by which we invoke the script.                                  |
| env              | Used for representing the array of elements that are environmental variables.                                                            |
| errorCode        | Provides the error code for last Tcl error.                                                                                              |
| errorInfo        | Provides the stack trace (report that provides information about program subroutines) for last Tcl error.                                |
| tcl_interactive  | Used to switch between **interactive** and **non-interactive** modes by setting this to 1 and 0 respectively.                            |
| tcl_library      | Used for setting the location of standard Tcl libraries.                                                                                 |
| tcl_pkgPath      | Provides the list of directories where packages are generally installed.                                                                 |
| tcl_patchLevel   | Refers to the current patch level of the Tcl interpreter.                                                                                |
| tcl_platform     | Used for representing the array of elements with objects including byteOrder, machine, osVersion, platform, and os.                      |
| tcl_precision    | Refers to the precision i.e. number of digits to retain when converting from floating-point numbers to strings. The default value is 12. |
| tcl_prompt1      | Refers to the primary prompt                                                                                                             |
| tcl_prompt2      | Refers to the second prompt with invalid commands                                                                                        |
| tcl_rcFileName   | Provides the user specific startup file                                                                                                  |
| tcl_traceCompile | Used for controlling the tracing of bytecode **compilation**. Use 0 for no output, 1 for summary, and 2 for detailed.                    |
| tcl_traceExec    | Used for controlling the tracing of bytecode **execution**.  Use 0 for no output, 1 for summary, and 2 for detailed.                     |
| tcl_version      | Returns the current version of the Tcl interpreter                                                                                       |

**Note:** the above special commands have their special meanings for the Tcl interpreter.

## Section 4: Basic Syntax

### Tcl Program

We use a new line or semicolon to terminate the previous line of code (similar to bash).
However, semicolon is not necessary, if you are using newline for each command.

### Comments

Comments are like helping text in your Tcl program and the interpreter ignores them.
Comments can be written using a hash_(#) sign in the beginning.

Multiline or block comment is written using "if" with condition "0".
An example is given below:

```tcl
if 0 {
    Everything in here is a comment
    Multiline/block comment
}
puts "Hello World 2!"
```

Inline comment uses ";". An example is given below:

```tcl
puts "hello World 3!"; # my first print in Tcl program
```

### Identifiers 

A Tcl identifier is a name used to to identify a variable, function, or any other user-defined item.

An identifier starts with a latter A-Z or a-z or underscore (_) followed by zero or more letters, dollars ($), and digits (0-9).

Tcl does not allow punctuation characters suh as @, and % with identifiers.
Tcl is a **case sensitive_** language.
The *Manpower* and *manpower* are two different identifiers in Tcl.
Here are some of the examples of acceptable identifiers:

```
mohd     zara  abc move_name a_123
myname50 _temp j   a23b9     retVal
```

### Whitespace in Tcl

A line containing only whitespace, possibly with a comment, is known as a **blank line**, and a Tcl interpreter totally ignores it.

Whitespace is the term used in Tcl to describe blanks, tabs, newline characters, and comments.
Whitespace separates one part of a statement from another and enables the interpreter to identify where one element in a statement, such as puts, ends and the next element begins.
Therefore, in the following statement:

```tcl
#!/usr/bin/tclsh

puts "Hello world!"
```

There must be at least one whitespace character (usually a space) between "puts" and "Hello World!" for the interpreter to be able to distinguish them.
On the other hand, in the following statement:

```tcl
#!/usr/bin/tclsh

puts [expr 3+2] ;# print sum of 3 and 2
```

No white space characters are necessary between 3 and +, or between + and 2, although, you are free to include some if you wish for the readability purpose.

## Section 5: Commands

Tcl is a Tool command language, commands are the most vital part of the language.
Tcl commands are built in-to the language with each having its own predefined function.
These commands form the reserved words of the language and cannot be used for other variable naming.
The advantage with these Tcl commands is that you can define your own implementation for any of these commands to replace the original built-in functionality.

Each of the Tcl commands validates the input and it reduces the work of the interpreter.

Tcl command is actually a list of words, with the first word representing the command to be executed.

The next words represent the arguments.
In order to group the words into a single argument, we enclose multiple words with "" or {}.

```tcl
commandName argument1 argument2 ... argumentN
```

In the following example:

```tcl
!#/usr/bin/tclsh

puts "Hello, world!"
```

In the above code, 'puts' is the Tcl command and "Hello World!" is argument1.
As mentioned earlier, we used "" to group two words.

Let's see another example of Tcl command with two arguments:

```tcl
#!/usr/bin/tclsh

puts stdout "Hello, world!"
```

In the above example, 'puts' is the Tcl command, 'stdout' is argument1, and "Hello World" is argument2.
Here, **stdout** makes the program prints in the standard output device.

### Command Substitution

In command substitutions, square brackets are used to evaluate the scripts inside the square brackets.

A simple example is shown below:

```tcl
#!/usr/bin/tclsh

puts [expr 1 + 6 + 9]
```

When the above code is executed, it produces the following result:

```tcl
16
```

### Variable Substitution

In variable substitutions, $ is used before the variable name and this returns the contents of the variable.

A simple example to set a value to a variable and print it is shown below:

```tcl
#!/usr/bin/tclsh

set a 3
puts $a
```

When the code above is executed, it produces the following result:

```tcl
3
```

### Backslash Substitution

These are commonly called **escape sequences**; with each backslash, followed by a letter having its own meaning.

A simple example for newline substitution  is shown below:

```tcl
#!/usr/bin/tclsh

puts "Hello\nWorld"
```

## Section 6: Data Types

The primitive data-type of Tcl is *string* and often we can find quotes on Tcl as string only language.
These primitive data-types in turn create composite(make up) data-types for list and associative array.
In Tcl, data-types can represent not only the simple Tcl objects, but also can represent complex objects such as handles, graphic objects (mostly widgets), and I/O channels.

### Simple Tcl Objects

In Tcl, whether it is an integer number, boolean, floating point number, or a string.
When you want to use a variable, you can directly assign a value to it.
There is no **step of declaration** in Tcl.
There can be internal representations for these different types of objects.
It can **transform one data-type to another when required**.

An example is shown below:

```tcl
#!/usr/bin/tclsh

set myVar 18
puts $myVar

set myVar 20
puts [expr $myVar + 6+9]
```

When the code above is executed, it produces the following output:

```tcl
18
35
```

One important thing to note is that, these variables **don't have default values** and must be assigned value before they are used.

### String Representations

Unlike other languages, in Tcl, you need to **not include double quotes**.

An example is shown below:

```tcl
#!/usr/bin/tclsh

set myVar hello
puts $myVar
```

When we want to represent multiple strings, we can use either **double quotes** or **curly braces**.

```tcl
#!/usr/bin/tclsh

set my Var "hello world"
puts $myVar

set myVar {Hello World}
puts $myVar
```

### List

List is nothing but a group of elements.
A group of words wither using double quotes or curly braces can be used to represent a simple list.

A simple *list* is shown below:

```tcl
#!/usr/bin/tclsh

set myVar {red green blue}
puts [lindex $myVar 2]

set myvar "red green blue"
puts [lindex $myVar 1]
```

### Associative Array

Associative arrays have an **index** (key) that is **not necessarily an integer**.

A simple example is shown below:

```tcl
#!/usr/bin/tclsh

set marks(englsih) 80
puts $marks(english)

set marks(mathematics) 90
puts $marks(mathematics)
```

When the above code is executed, it produces the following result:

```tcl
80
90
```

### Handles

Tcl handles are commonly used to represent files and graphics objects.
These can include handles to network requests and also other channels like serial port communications, sockets, or I/O devices.

```tcl
#!/usr/bin/tclsh

set myfile [open "test.tcl" r]
```

## Variables

In Tcl, there is no concept of variable declaration.
Once, a new variable name is encountered, Tcl will define a new variable.

### Variable Naming

The name of variables can contain any characters and length.
You **can** even **have white spaces by enclosing the variable in curly braces**, but it is not preferred.

The **set** command is used for assigning value to a variable.
The syntax for set command is:

```tcl
#!/usr/bin/tclsh

set variableA 10
set {variable B} test

puts $variableA
puts ${variable B}
```

When the above code is executed, it produces the following result:

```tcl
10
test
```

Note that $variableName is used to get the value of the variable.

### Dynamic Typing

Tcl is a dynamically typed language.
The value of the variable can be dynamically converted to the required type when required.
For instance, a number 5 that is stored as string will be converted to number when doing an arithmetic operation.

It is shown below

```tcl
#!/usr/bin/tclsh

set variableA "10"
puts $variableA

set sum [expr $variableA +20]
puts $sum
```

When the above code is executed, it produces the following result:

```tcl
10
30
```

### Mathematical Expressions

As seen earlier, **expr** is used for *representing mathematical expression*.
The default precision of Tcl is 12 digits.
In order to get floating point results, we should *add at least a single decimal digits*.

A simple example explains the above:

```tcl
#!/usr/bin/tclsh

set variableA "10"
set result [expr $variableA / 9];
puts $result

```

In the above example, there are 3 cases:
* In the first case, the dividend and the divisor are whole numbers and we get a whole number as result.
* In the second case,the divisor alone is a decimal number
* In the third case, the dividend is a decimal number.

In both second and third cases, we get a decimal number as result.

**Note:** the precision can be changed using *tcl_precision* special variable.

```tcl
#!/usr/bin/tclsh

set tcl_precision 4

set variable "30.92"
set result [expr $variableA / 3]
puts $result
```

**Note:** tcl_precision needs to be set before the *puts* statement is executed for tcl_precision to affect the result.

**Note:** the precision number specified include the total digits before and my after the decimal. 
Examples of *tcl_precision 4* include:

```tcl
30.92
1.133
100.7
```