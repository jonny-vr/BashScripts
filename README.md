# BashScripts
After learning about Linux in Uni, I'm starting to write my own bash scripts. 😊

## PDF Search Script

This script helps you find specific words in multiple PDF files at once. Using wildcards is highly recommended.

### Functionality

The script searches for words in PDF files and prints the lines containing the words, along with the respective file. It also supports options like -B and -A to display a specific number of lines before and after the word. By default, it ignores case when searching.

Feel free to use and modify this script as needed! Happy scripting! 🚀

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
