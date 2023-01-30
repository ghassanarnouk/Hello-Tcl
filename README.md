# Hello-TCL

:books: My Notes for Tcl Scripting - written in markdown :fire:

## Table of contents

Section 1: [Overview](https://github.com/ghassanarnouk/Hello-TCL#overview)\
Section 2: [Environment Setup]()\
Section 3:

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

