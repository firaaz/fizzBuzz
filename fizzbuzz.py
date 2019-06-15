#!/usr/bin/env python

import sys

def fizzBuzz(number):
    if number % (3 * 5) == 0:
        return "FizzBuzz"
    elif number % 5 == 0:
        return "Buzz"
    elif number % 3 == 0:
        return "Fizz"
    else:
        return number

def main():
    output = list()
    try:
        number = sys.argv[1]
    except IndexError:
        number = 1

    for i in range (1, int(number)):
        value = fizzBuzz(i)
        output.append(value)
    print(output)

if __name__ == "__main__":
    main()
