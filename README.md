## Student Name: Brian Giovinazzo

# Assignment 3: data representation

You are to perform the following programming tasks:

### Programming Task 1:

A program called **i2b.c** was implemented with the intention to provide a binary representation of an integer. 
Unfortunately, the implementation has the following limitation:
- It was hard-coded to only convert a single number. 
- The conversion algorithm only works for positive number. 

Modify the existing source code of **i2b.c** such that: 

- **i2b.c** can now accept a single command line argument. This command line argument is assumed to be 
a valid signed integer. 
- **i2b.c** will convert the command line argument into its corresponding binary representation with the 
following condition:
  - The representation is an array of integers. 
  - This array has a length of 32. 
  - This array contains the binary representations of the integer argument. 
  - Index 0 contains the most significant bit, and index 31 contains the least significant bit. 
- **i2b.c** will print out the final binary representation on a single line without any space between the bits. 

### Programming Task 2:

Create a copy of **i2b.c** called **i2h.c**, and modify **i2h.c** to satisfy the following specifications: 

- **i2h.c** accept a single command line argument. This command line argument is assumed to be 
a valid signed integer. 
- **i2h.c** will convert the command line argument into the corresponding machine's hexadecimal representation with the 
following condition:
  - The representation is an array of characters. 
  - This array has a length of 8. 
  - This array contains the hex representations of the integer argument (*In computers, hexadecimal representation is 
  a direct translation of binary representation*. 
  - All characters are uppercase. 
- **i2h.c** will print out the final hexadecimal representation on a single line without any spaces between the digits. 

### Programming Task 3:

Augment the source code of **i2b.c** such that: 

- **i2b.c** can now accept more than one command line argument. All command line arguments are assumed to be 
valid signed integers.

- **i2b.c** will convert each command line argument into its corresponding binary representation with the 
following condition:
  - The representation is an array of integers. 
  - This array has a length of 32. 
  - This array contains the binary representations of the integer argument. 
  - Index 0 contains the most significant bit, and index 31 contains the least significant bit. 
- **i2b.c** will print out the each binary representation on a single line without any space between the bits. 

### Analytical Task 4 (2 points):

Carry out a GDB analysis on your i2b.c program from Programming Task 1 and demonstrate the correctness of your program by showing 
the binary value of the integer that was read from the command line. You are to take screenshot of the GDB debugging process that 
clearly show:
  - The gdb breakpoint and run with corresponding command line arguments. 
  - The binary representation of the integer value inside gdb using **p \t**.
  - The outcome of your program in the terminal that shows the binary value of the 
  same integer. 
The above process should be done for one positive and one negative integer for a total 
of six screenshots. The screenshots are to be placed into a PDF document named **i2b.pdf**.

## Submission

- Edit the README.md to add your name to the top of the file.
- Submit the URL of your assignment git repository, as provided through GitHub Classroom to D2L.
- Besides the two required files, **i2b.c**, **i2h.c**, **i2bm.c**, and **i2b.pdf** and any other related header/supporting files, you must not make any changes to the existing test files or test script. 
- The last commit to your git repository must be made prior to the deadline of the assignment. Any subsequent commit will not be considered. 
