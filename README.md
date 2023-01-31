# Hello-TCL

:books: My Notes for Tcl Scripting - written in markdown :fire:

## Table of contents

Section 1: [Overview](https://github.com/ghassanarnouk/Hello-TCL#overview)\
Section 2: [Environment Setup](https://github.com/ghassanarnouk/Hello-TCL#environment-setup)\
Section 3: [Special Variables](https://github.com/ghassanarnouk/Hello-Tcl#special-variables)\
Section 4: [Basic Syntax]()

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

