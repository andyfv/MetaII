# Meta II

## Table of Contents

* [About](#about)
* [How to run it](#how-to-run-it)
* [How to use it](#how-to-use-it)
* [Implementation](#implementation)
* [Related Work](#related-work)
* [Notes](#notes)


## About

A metacompiler based on [Meta II](https://dl.acm.org/doi/10.1145/800257.808896) from Dewey Val Schorre.

This implementation is based on the work of James M. Neighbors and the [Tutorial: Metacompilers Part 1](https://www.bayfronttechnologies.com/mc_tutorial.html).


## How to run it

* Download or clone the repository in your Pharo image
* Load the Meta2 package.

## How to use it

1) There is a basic Meta II interpreter byte code in the method `Meta2>>#interpreterCode` that is loaded automatically. Change the `Meta2>>#loadInterpreter` method if you want to load a new version.

2) There is a basic Meta II metacompiler code written in the original Meta II notation that is automatically loaded, as a method at `Meta2>>#inputCode`. Load your high-level Meta II code as your input by changing the `Meta2>>#loadInputCode` method.

3) Open Playground and execute the following
```
meta := Meta2 new.
meta startCompile
```

4) If the compilation is successful the output interpreter code will be automatically saved as a method in `Meta2>>#outputCode`

## Implementation

The Meta II metacompiler is very compact. The basic Meta II compiler that generates and write it's own language is just 6 statements and all the code is just 26 lines of code. The 26 lines in turn are compiled to Meta II byte code of just 211 lines. To move the compiler to a different target only the byte opcodes need to be reimplemented. The basic op code table consists of the following operators:

| Mnemonic      | Purpose                                   |
| ------------- | -------------                             |
| ADR           | Starting location                         |
| END           | End of input                              |
| TST 'string'  | Test for input string                     |
| ID            | Test for Identifier Token                 |
| NUM           | Test for Number Token                     |
| SR            | Test if begins with a string              |
| CLL AAA       | Call subroutine in location AAA           |
| R             | Return to the exit address                |
| SET           | Set branch switch on                      |
| B AAA         | Branch unconditionally to location AAA    |
| BT AAA        | Branch to location AAA if switch is ON    |
| BF AAA        | Branch to location AAA if switch is OFF   |
| BE            | Branch to Error if False                  |
| CL 'string'   | Copy the literal string                   |
| CI            | Copy the input buffer to the output       |
| GN1           | Generate Label at Cell 1 in the stack     |
| GN2           | Same as GN1 but on Cell 2                 |
| LB            | Move to Label field                       |
| OUT           | Output the output buffer                  |

Currently the implementation reproduces the original Meta II from Dewey Val Schorre. But the idea is to use it as a "stepping stone" as shown by James M. Neighbors.

## Related Work

* [OMeta](https://tinlizzie.org/VPRIPapers/tr2007003_ometa.pdf) from VPRI.
* [Ohm](https://ohmjs.org/) - successor to OMeta

## Notes

There is stuff to be done - tests, GUI, features, clean up the syntax...