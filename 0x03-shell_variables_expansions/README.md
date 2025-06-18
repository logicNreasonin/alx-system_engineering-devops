# 0x03. Shell, init files, variables and expansions

## Description

This project covers the basics of shell scripting, focusing on shell initialization files, variables, and expansions. You will learn how to create and use shell variables, understand different types of expansions, and manage shell environments.

## Learning Objectives

- What happens when you type `$ ls -l *.txt`
- What are shell initialization files and how to use them
- How to create, update, and delete shell variables
- What are the different types of variables
- What is the special parameter `$?`
- How to perform shell arithmetic
- How to use shell expansions (brace, tilde, parameter, command, arithmetic)
- How to use aliases and shell functions

## Project Structure

Each script in this directory demonstrates a specific concept related to shell variables and expansions.

| File | Description |
|------|-------------|
| `0-alias` | Creates an alias |
| `1-hello_you` | Prints `hello user`, where user is the current Linux user |
| `2-path` | Adds `/action` to the `PATH` variable |
| `3-paths` | Counts the number of directories in the `PATH` |
| `4-global_variables` | Lists environment variables |
| `5-local_variables` | Lists all local variables and environment variables |
| `6-create_local_variable` | Creates a new local variable |
| `7-create_global_variable` | Creates a new global variable |
| `8-true_knowledge` | Prints the result of the addition of 128 with the value stored in the environment variable `TRUEKNOWLEDGE` |
| `9-divide_and_rule` | Prints the result of `POWER` divided by `DIVIDE` |
| `10-love_exponent_breath` | Displays the result of `BREATH` to the power `LOVE` |
| `11-binary_to_decimal` | Converts a number from base 2 to base 10 |
| `12-combinations` | Prints all possible combinations of two letters, except identical ones |
| `13-print_float` | Prints a number with two decimal places |
| `100-decimal_to_hexadecimal` | Converts a number from base 10 to base 16 |
| `101-rot13` | Encodes and decodes text using rot13 encryption |
| `102-odd` | Prints every other line from the input, starting with the first line |
| `103-water_and_stir` | Adds two numbers stored in environment variables and prints the result |

## Usage

To run a script, use:

```bash
./<script_name>
```

Make sure to give execution permissions if needed:

```bash
chmod +x <script_name>
```

## Author

- Ikechukwu Faithful

## Acknowledgements

Project developed as part of the ALX Software Engineering program.