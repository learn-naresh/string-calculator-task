# String Calculator TDD Kata

## Introduction

This project implements a simple String calculator with a method signature similar to `int add(string numbers)`. The method takes a string of comma-separated numbers as input and returns their sum as an integer.

## Requirements

- **Input:** A string of comma-separated numbers.
- **Output:** An integer, sum of the numbers.

## Examples

- Input: "", "1", "1,5"
  - Output: 0, 1, 6

## Getting Started

To get started with the String Calculator, follow these steps:

1. Clone this repository to your local machine.
2. Navigate to the project directory.
3. Open the project in your preferred text editor or IDE.
4. Run the tests to ensure everything is working correctly.

## Running Tests

This project utilizes Test-Driven Development (TDD) approach. To run the tests:

1. Ensure you have Ruby installed on your machine.
2. Navigate to the project directory in your terminal.
3. Run the command `rspec string_calculator_spec.rb` to execute the test suite.
4. Observe the test results to ensure all cases pass.

## Approach

The approach to solving this problem involves the following steps:

1. Start with the simplest test case of an empty string and move to one and two numbers.
2. Solve things as simply as possible, forcing oneself to write tests not initially considered.
3. Refactor after each passing test.
4. Allow the `add` method to handle any amount of numbers.
5. Allow the `add` method to handle new lines between numbers (instead of commas).
6. Support different delimiters.

## Support and Contributions

If you encounter any issues with the String Calculator or have suggestions for improvements, feel free to open an issue or submit a pull request. Your contributions are welcomed and appreciated.
