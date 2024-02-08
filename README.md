# BashScripts
After learning about Linux in Uni, I am starting to write my own bash scripts. :)

# PDF Search Script

This script allows searching for a specific keyword in multiple PDF files at once. This is very practical

## Functionality

The script searches PDF files for a specific keyword and prints out the lines containing the keyword, as well as the respective file containing it. It also supports the options -B and -A to display a specific number of lines before and after the found keyword. It uses -i option (ignoreCase) on grep on default.

## Usage

The script is called as follows:

```bash
./search -B <before_lines> -A <after_lines> "<keyword>" <file1.pdf> <file2.pdf> ...
```

## Example Usage

**Command:**

```bash
$ search "Iterative deepening" Folien/*
```

**Output:**
```bash
-----------------------------------------------
Folien/AI 03 Solving Problems by Searching.pdf
-----------------------------------------------
• Iterative deepening search

3.4.5 Iterative Deepening Search
• The iterative deepening search algorithm repeatedly

Example Iterative Deepening Search

Iterative Deepening, AIMA ex. fig. 3.19

Iterative Deepening Search
• Use iterative deepening A* (IDA*)
• Iterative deepening search calls DFS with increasing depth

------------------------------------
Folien/AI 05 Adversarial Search.pdf
------------------------------------
• Better: Use iterative deepening
``` 
