# Hello-TCL

:books: My Notes for Tcl Scripting - written in markdown :fire:

## Table of contents

Section 1: [Overview](https://github.com/ghassanarnouk/Hello-TCL#overview)\
Section 2: [Environment Setup](https://github.com/ghassanarnouk/Hello-TCL#environment-setup)\
Section 3: [Special Variables](https://github.com/ghassanarnouk/Hello-Tcl#special-variables)\
Section 4: [Basic Syntax](https://github.com/ghassanarnouk/Hello-Tcl#basic-syntax)\
Section 5: [Commands]()


## Overview

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

## Environment Setup

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

## Special Variables

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

## Basic Syntax

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


















