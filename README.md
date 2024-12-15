# Assembly Memory Access Violation

This repository demonstrates a common error in assembly programming: accessing memory without proper bounds checking.  The code attempts to access memory using the address calculated by `ebx + ecx * 4`.  If `ecx` is too large, a segmentation fault (or similar memory access violation) occurs.

## Bug Description
The `bug.asm` file contains a line of assembly code that is susceptible to memory access violations. The lack of bounds checking on the `ecx` register can lead to the program attempting to access memory outside its allocated space. This leads to unpredictable behavior and a program crash.

## Solution
The `bugSolution.asm` file provides a solution which demonstrates input validation for `ecx` before attempting memory access. This prevents out-of-bounds memory access and ensures safer code execution.